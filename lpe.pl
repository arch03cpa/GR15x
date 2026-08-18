#!/usr/bin/perl

################################################################################
#                   Low Power Engine (LPE) Control Script
################################################################################
#
# DESCRIPTION:
#   Hardware register manipulation tool for GPU power management testing.
#   Supports register read/write, power gate control, clock gating, engine
#   residency measurement, threshold configuration, and holdoff management.
#
# SUPPORTED CHIPS:
#   - gr10x (default)
#   - gr15x
#   - gb202
#   - gb100
#   - gb20x
#
# KEY FEATURES:
#   - Flexible register control (single bit, bit range, whole register)
#   - Direct register access by absolute address
#   - Engine threshold configuration (EXP, MANT, BEFORE, AFTER)
#   - Engine residency measurement and power state monitoring
#   - Automatic BDF address detection with manual override
#   - GPU device accessibility validation
#   - JSON-based register configuration and CSV data export
#   - Modular configuration system (regControlConfig.pl, regThresholdConfig.pl)
#   - Colored console output for better readability
#
# COMMAND LINE OPTIONS:
#   --chip <type>      : Chip type (gr10x/gr15x/gb202/gb100/gb20x, default: gr10x)
#   --Feature <func>   : Function to execute (see available functions below)
#   --args <args>      : Function arguments (comma-separated)
#   --bdf <address>    : GPU BDF address (e.g., 09:00.0, auto-detect if omitted)
#   --time/-t <ms>     : Sleep time in milliseconds (required for engResidency)
#   --loop <count>     : Loop count for engResidency (default: 1)
#   --no_color         : Disable color output (useful for logging or non-TTY)
#   --help/-h          : Show help message
#
################################################################################

################################################################################
#                           CHANGELOG / VERSION HISTORY
################################################################################
#
# Version 2.1.2 - 2026-06-25
#   [Added] ENG_IDLE_FILT_EXP (bits 12:8) support in regThreshold read and write.
#           Write now accepts 3 values (MANT BEFORE AFTER) or 4 values
#           (EXP MANT BEFORE AFTER). Read/list always display EXP.
#
# Version 2.1.3 - 2026-06-26
#   [Added] General BLCG/SLCG readback export from blcg.sh/slcg.sh into CSV.
#
# Version 2.1.1 - 2026-05-26
#   [Added] _ALL family alias for regThreshold (e.g. ELCG_NVDEC_ALL,
#           ELCG_NVJPG_ALL, ELCG_COPY_ALL, ELCG_OFA_ALL). Expands to all
#           indexed engines of a family in a single command, in both
#           read and write paths, single or batch positions.
#
# Version 2.1.0 - 2025-10-28
#   [Added] Register threshold configuration feature (regThreshold)
#   [Added] Support for threshold control (ENG_IDLE_FILT_MANT, ENG_DELAY_BEFORE, ENG_DELAY_AFTER)
#   [Added] Modular threshold configuration (regThresholdConfig.pl)
#   [Enhanced] Help message with complete usage examples
#   [Enhanced] Better function table organization
#
# Version 2.0.0 - 2025-10-13
#   [Added] Support for gb20x chip type
#   [Added] Automatic BDF address detection functionality (lspci, nvidia-smi, scanning)
#   [Added] GPU device accessibility validation before operations
#   [Enhanced] Improved error messages with colored output (Term::ANSIColor)
#   [Enhanced] Better BDF address format validation (XX:XX.X format)
#   [Fixed] Register control configuration now loaded from external module (regControlConfig.pl)
#
# Version 1.5.0 - 2025-10-09
#   [Added] Direct register access feature (regDirect) by absolute address
#   [Added] Flexible bit position control (whole/single/range)
#   [Enhanced] Register control with RMW (Read-Modify-Write) support
#   [Enhanced] Comprehensive register read with bit field display
#   [Enhanced] Support for multiple bit positions in same register
#
# Version 1.0.0 - 2025-09-24
#   [Initial] Basic register control and residency measurement
#   [Initial] Support for gr10x, gr15x, gb202, gb100 chip types
#   [Initial] Engine residency measurement functionality
#   [Initial] Power management control features
#   [Initial] PRI holdoff and wakeup control
#
# Format Convention:
#   [Added]    - New features
#   [Enhanced] - Improvements to existing features
#   [Fixed]    - Bug fixes
#   [Changed]  - Breaking changes or major modifications
#   [Removed]  - Deprecated features
#
################################################################################

################################################################################
#                             USAGE EXAMPLES
################################################################################
#
# === Basic Operations ===
#   perl lpe.pl --help
#   perl lpe.pl --chip gr10x --Feature regFromJson --args dump
#   perl lpe.pl --Feature regTest
#   perl lpe.pl --Feature regTestFromJson --args dump
#   perl lpe.pl --Feature blcgRead
#   perl lpe.pl --Feature slcgRead
#
# === Register Control (enable/disable/read) ===
#   perl lpe.pl --Feature regControl --args NVDCLK_SD enable
#   perl lpe.pl --Feature regControl --args PCIE_BLCG disable
#   perl lpe.pl --Feature regControl --args PCIE_SLCG read
#   perl lpe.pl --Feature regControl --args NVDCLK_SD enable PCIE_BLCG enable
#   perl lpe.pl --Feature regControl --args ELCG_ALL enable
#   perl lpe.pl --Feature regControl --args NVLINK_SLCG_0 disable
#
# === Direct Register Access (by absolute address) ===
#   perl lpe.pl --Feature regDirect --args 0x8c080 read
#   perl lpe.pl --Feature regDirect --args 8c080 write whole 0x12345678
#   perl lpe.pl --Feature regDirect --args 0x8c100 write 31 1
#   perl lpe.pl --Feature regDirect --args 0x8c200 write 7:1 0x7F
#
# === Threshold Configuration ===
#   perl lpe.pl --Feature regThreshold --args list
#   perl lpe.pl --Feature regThreshold --args ELCG_GR read
#   perl lpe.pl --Feature regThreshold --args ELCG_GR write 5 10 8
#   perl lpe.pl --Feature regThreshold --args ELCG_GR write 7 5 10 8
#   perl lpe.pl --Feature regThreshold --args ELCG_NVDEC_0 write 0x7 0x3 0xA 0x8
#   perl lpe.pl --Feature regThreshold --args ELCG_COPY_0 read
#
# === Engine Residency Measurement ===
#   perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_GR -t 1000
#   perl lpe.pl --chip gb202 --Feature engResidency --args ELCG_NVDEC1 -t 1000
#   perl lpe.pl --Feature engResidency --args ELCG_COPY_0 ELCG_COPY_1 -t 2000
#
# === Wakeup Control ===
#   perl lpe.pl --Feature videoWakeup --args 1000
#   perl lpe.pl --Feature GPCWakeup --args 500
#
# === Advanced Operations ===
#   perl lpe.pl --Feature priHoldOff --args 1 1
#   perl lpe.pl --Feature priHoldOff --args 5 0
#   perl lpe.pl --Feature priTest
#   perl lpe.pl --Feature priHisBufTest
#
# === Specify BDF Address ===
#   perl lpe.pl --bdf 0a:00.0 --Feature regControl --args NVDCLK_SD enable
#   perl lpe.pl --bdf 04:00.0 --chip gb20x --Feature engResidency --args ELCG_GR -t 1000
#
################################################################################

################################################################################
#                           EXTENSION GUIDE
################################################################################
#
# === HOW TO ADD NEW REGISTER CONTROL ===
#   Step 1: Add registers to Global Register Table (%reg)
#           Location: Line 401-527
#           - Add to appropriate group: 'control', 'residency', 'pri', etc.
#           - Format: "REGISTER_NAME" => undef
#           Example:
#               'control' => {
#                   "NV_NEW_CTRL_REG" => undef,
#               }
#
#   Step 2: Add control configuration in regControlConfig.pl
#           Location: regControlConfig.pl
#           - Under appropriate chip type (gr10x/gr15x/gb202/gb100/gb20x)
#           - Format:
#               'CONTROL_NAME' => {
#                   'description' => 'Control Description',
#                   'registers' => {
#                       'REGISTER_NAME' => {
#                           'group'         => 'control',
#                           'bit_position'  => 'whole' | '31' | '7:1',
#                           'enable_value'  => 0x1,
#                           'disable_value' => 0x0,
#                       }
#                   }
#               }
#
#   Step 3: Add register addresses to <chip>_registers.json
#           - Format: "REGISTER_NAME": "0x12345678"
#           - Example: "NV_NEW_CTRL_REG": "0x000c0100"
#
# === HOW TO ADD THRESHOLD CONFIGURATION ===
#   Step 1: Ensure register exists in %reg{'control'}
#           - Register should already be defined in control group
#
#   Step 2: Add threshold configuration in regThresholdConfig.pl
#           Location: regThresholdConfig.pl
#           - Under appropriate chip type
#           - Format:
#               'ELCG_ENGINE_NAME' => {
#                   'description' => 'Engine Threshold Control',
#                   'register' => 'NV_PPWR_PMU_GATE_CTRL_X',
#                   'group' => 'control',
#                   'fields' => {
#                       'ENG_IDLE_FILT_MANT' => {
#                           'bit_position' => '15:13',
#                           'description' => 'Engine Idle Filter Mantissa'
#                       },
#                       'ENG_DELAY_BEFORE' => {
#                           'bit_position' => '19:16',
#                           'description' => 'Engine Delay Before'
#                       },
#                       'ENG_DELAY_AFTER' => {
#                           'bit_position' => '23:20',
#                           'description' => 'Engine Delay After'
#                       }
#                   }
#               }
#
#   Step 3: Register addresses should already exist in <chip>_registers.json
#
# === HOW TO ADD RESIDENCY FOR NEW ENGINE ===
#   Step 1: Add engine mapping to %engMap in engResidency() 
#           Location: Line 1236-1417 (inside engResidency function)
#           - Under appropriate chip type branch
#           - Format: 'ENGINE_NAME' => 'hex_id'
#           Example:
#               if ($chip eq 'gr10x') {
#                   %engMap = (
#                       'ELCG_NEW_ENGINE' => '0A',
#                   );
#               }
#
#   Step 2: Ensure residency registers exist in %reg{'residency'} 
#           Location: Line 436-442
#           - Required registers (already defined):
#               NV_PPWR_PMU_RESIDENCY_CTRL
#               NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL
#               NV_PPWR_PMU_RESIDENCY_CTRL_INDEX
#               NV_PPWR_PMU_RESIDENCY_STATE_INDEX
#               NV_PPWR_PMU_RESIDENCY_STATE
#
#   Step 3: Register addresses should already exist in <chip>_registers.json
#
# === HOW TO ADD NEW CHIP SUPPORT ===
#   Step 1: Create <chip>_registers.json with all register addresses
#           - Use existing JSON files as template
#           - Format: {"REGISTER_NAME": "0xHEXADDRESS"}
#
#   Step 2: Add chip-specific configuration in regControlConfig.pl
#           - Add new elsif branch for your chip
#           - Define all control configurations
#
#   Step 3: Add chip-specific configuration in regThresholdConfig.pl
#           - Add new elsif branch for your chip
#           - Define all threshold configurations
#
#   Step 4: Add chip-specific %engMap in engResidency() 
#           Location: Line 1236-1417
#           - Add elsif branch with engine mappings
#
#   Step 5: Update command line examples in this file
#           - Add new chip to examples above
#           - Update help message
#
# === KEY CODE LOCATIONS ===
#   - Command Line Parsing:         Line 307-318 (GetOptions)
#   - Global Register Table:        Line 401-527 (%reg hash)
#   - Control Configuration:        regControlConfig.pl (loaded at line 553-554)
#   - Threshold Configuration:      regThresholdConfig.pl (loaded at line 557-558)
#   - Function Table:               Line 594-607 (%func hash)
#   - Main Execution & Routing:     Line 702-721
#   - Register Operations:          Line 724-933 (regTest, regFromJson, etc.)
#   - Utility Functions:            Line 940-1087 (testGPUAccess, detectBDFAddress, write_to_csv)
#   - Power Management Functions:   Line 1095-1455 (engResidency, videoWakeup, GPCWakeup, priHoldOff)
#   - Register Control Functions:   Line 1556-2377 (regControl, regDirect, regThreshold)
#   - Bit Position Parser:          Line 1616-1644 (_parseBitPosition)
#   - Execute Register Control:     Line 1658-1864 (_executeRegControl)
#   - Direct Register Access:       Line 1882-2041 (regDirect)
#   - Threshold Control:            Line 2062-2377 (regThreshold and _listAllThresholds)
#
# === NOTES ===
#   - Line numbers are approximate and may shift as code evolves
#   - Always test new configurations thoroughly before deployment
#   - Use --help to verify function availability
#   - Check JSON file syntax with JSON validator before use
#
################################################################################

use 5.010;
use strict;
use warnings;
use Time::HiRes qw(usleep);
use Getopt::Long;
use File::Spec::Functions qw(catfile);
use Data::Dumper qw(Dumper);
use FileHandle;
use List::Util qw(max min);
use JSON;
use Text::CSV;
use POSIX qw(strftime);
use Term::ANSIColor;

use FindBin;
use lib "$FindBin::Bin"; 
use lowPwr qw(checkUtils regWrBar regRdBar);

# To address given/when warnings in Perl ver5.18 and above
no if $] >= 5.018, 'warnings', "experimental::smartmatch";
# Removed: use feature "switch";  # No longer needed - replaced given/when with if/elsif/else

################################################################################
#                           GLOBAL VARIABLES
################################################################################

# Command line options
my $chip = 'gr10x';
my $g_nv_dev_bdf;
my $func = 'regFromJson';
my @func_args;
my $sleep_time;
my $loop_count = 1;  # Default loop count for engResidency
my $help;
my $no_color = 0;  # Color output enabled by default

# Runtime variables
my $gpu_id;
my %engStatus;

################################################################################
#                        COMMAND LINE PARSING
################################################################################
GetOptions (
    "chip=s"       => \$chip,         # Chip type: gr10x, gr15x, gb202, gb100, gb20x
    "Feature=s"    => \$func,         # Function to execute
    "args=s{,}"    => \@func_args,    # Function arguments (comma-separated)
    "bdf|b=s"      => \$g_nv_dev_bdf, # GPU BDF address (e.g., 09:00.0)
    "time|t=i"     => \$sleep_time,   # Sleep time in milliseconds
    "loop=i"       => \$loop_count,   # Loop count for engResidency (default: 1)
    "no_color"     => \$no_color,     # Disable color output
    "help|h|?"     => \$help,         # Show help message
) or do {
    print "\nERROR: Invalid command line arguments\n";
    print "Use --help for usage information\n";
    exit 1;
};

# Override colored() function if --no_color is specified
if ($no_color) {
    *colored = sub {
        my ($text, $color) = @_;
        return $text;  # Return text as-is without color formatting
    };
}

# Initialize low-level utility first
checkUtils();

# Initialize GPU ID after parsing command line arguments
if (defined($g_nv_dev_bdf)) {
    # User explicitly specified BDF address
    $gpu_id = $g_nv_dev_bdf;
    print colored("[INFO]", "cyan") . " Using user-specified BDF address: $gpu_id\n";
} else {
    # Try to auto-detect BDF address
    print colored("[INFO]", "cyan") . " No BDF address specified, attempting auto-detection...\n";
    
    my $detected_bdf = detectBDFAddress();
    
    if (defined $detected_bdf) {
        $gpu_id = $detected_bdf;
        print colored("[SUCCESS]", "green") . " Auto-detected BDF address: $gpu_id\n";
    } else {
        # Fall back to default
        $gpu_id = "09:00.0";
        print colored("[WARNING]", "yellow") . " Auto-detection failed, using default BDF address: $gpu_id\n";
        print colored("[NOTE]", "cyan") . " If this is incorrect, specify with --bdf parameter\n";
    }
}

# Validate BDF address format
unless ($gpu_id =~ /^[0-9a-fA-F]{2}:[0-9a-fA-F]{2}\.[0-7]$/) {
    my $msg = "Invalid BDF address format: '$gpu_id'\n" .
              "Expected format: XX:XX.X (e.g., 09:00.0, 0a:00.0, 04:00.0)\n" .
              "  XX = Bus number (00-FF in hex)\n" .
              "  XX = Device number (00-1F in hex)\n" .
              "  X  = Function number (0-7)\n\n" .
              "To find your GPU BDF address:\n" .
              "  Windows: Check Device Manager -> Display adapters -> Properties -> Details -> Location\n" .
              "  Linux:   Run 'lspci | grep -i nvidia' or 'nvidia-smi -q | grep \"Bus Id\"'";
    error_exit($msg, 'fatal');
}

my $reg_csv = $chip.'_register_data.csv';

################################################################################
#                         HARDWARE CONSTANTS
################################################################################
use constant {
    # Power Gate Status States
    NV_PPWR_PMU_PG_STAT_EST_POWERON_ENGIDLE          => 0,
    NV_PPWR_PMU_PG_STAT_EST_POWERINGDOWN             => 1,
    NV_PPWR_PMU_PG_STAT_EST_ACTIVE                   => 2,
    NV_PPWR_PMU_PG_STAT_EST_POWERON_ENGBUSY          => 3,
    NV_PPWR_PMU_PG_STAT_EST_POWERINGUP               => 4,
    NV_PPWR_PMU_PG_STAT_EST_PWROFF                   => 5,
    NV_PPWR_PMU_PG_STAT_EST_PWROFF_ACTIVE            => 6,
    
    # Engine Holdoff Control
    Holdoff_Off                                      => 0,
    Holdoff_En                                       => 1,
    Holdoff_status                                   => 2,
    BLOCKED                                          => 1,
    NOTBLOCKED                                       => 0,
    
    # Engine Context Status
    NV_RUNLIST_ENGINE_STATUS0_CTX_STATUS_INVALID     => 0,
    NV_RUNLIST_ENGINE_STATUS0_CTX_STATUS_VALID       => 1,
    
    # Residency Control Configuration
    NV_PPWR_PMU_RESIDENCY_CTRL_TYPE_LEVEL            => 1,
    NV_PPWR_PMU_RESIDENCY_CTRL_EN_ENABLE             => 1,
    NV_PPWR_PMU_RESIDENCY_CTRL_POLARITY_HIGH_ACTIVE  => 1,
    NV_PPWR_PMU_RESIDENCY_CTRL_POLARITY_LOW_ACTIVE   => 0,
    NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL_EN_DIS         => 0,
    NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL_EN_EN          => 1,
    NV_PPWR_PMU_RESIDENCY_CTRL_CLEAR_TRIGGER         => 1,
    
    # Timing and Calculation Constants
    CLOCK_FREQUENCY_MHZ                              => 108,    # PMU clock frequency in MHz
    HOLDOFF_TIMEOUT_SEC                              => 20,     # Maximum wait time for holdoff operation
    DEFAULT_WAKEUP_LOOPS                             => 1000,   # Default loop count for wakeup functions
    
    # Display Format Constants
    TABLE_WIDTH_NARROW                               => 90,     # For single threshold display
    TABLE_WIDTH_MEDIUM                               => 110,    # For threshold write operations
    TABLE_WIDTH_WIDE                                 => 150,    # For list all thresholds
    SEPARATOR_CHAR                                   => '=',    # Table separator character
};

################################################################################
#                       GLOBAL REGISTER TABLE
################################################################################
# Purpose: Store register addresses grouped by functional category
# Structure: %reg{<group>}{<register_name>} = <hex_address>
# Note: Addresses loaded from JSON file via regFromJson()
################################################################################
my %reg = (
    'common' => {

    },
    'pri' => {
        "NV_PPWR_PMU_ENG_HOLDOFF_0"                                => undef,
        "NV_PPWR_PMU_ENG_HOLDOFF_ENTER_0"                          => undef,
        "NV_RUNLIST_ENGINE_STATUS0_0"                              => undef,
        "NV_PPRIV_SYS_PRI_HISTORY_BUFFER_CTRL"                     => undef,
        "NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ0"                    => undef,
        "NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ1"                    => undef,
        "NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ2"                    => undef,
        "NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_CTRL"                    => undef,
        "NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ0"                   => undef,
        "NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ1"                   => undef,
        "NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ2"                   => undef,
        "NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_CFG_INDEX"                => undef,
        "NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_CFG_APERTURE"             => undef,
        "NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_ALLOW_CFG_INDEX"          => undef
    },
    'pmu' => {
        "NV_PPWR_PMU_PG_STAT_4"                                    => undef
    },
    'sysc' => {
        "NV_PPRIV_SYSC_PRI_PM_CONFIG"                              => undef
    },
    'LPSEC' => {
        "NV_PGC6_ZB_LPSEC_SQMGR_STATUS_0"                          => undef,
        "NV_PGC6_ZB_LPSEC_SQMGR_ERROR_0"                           => undef,
        "LNV_PGC6_ZB_LPSEC_BOOTSTRAP_STATUS"                       => undef,
        "NV_PGC6_ZB_LPSEC_BS_RAM_PGSTATUS"                         => undef,
        "NV_PGC6_ZB_LPSEC_SQR_STATUS_0"                            => undef,
        "NV_PGC6_ZB_LPSEC_SQR_RAM_PGSTATUS_0"                      => undef,
        "LPSEC_PGOOD_STATUS"                                       => undef
    },
    'residency' => {
        "NV_PPWR_PMU_RESIDENCY_CTRL"                               => undef,
        "NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL"                        => undef,
        "NV_PPWR_PMU_RESIDENCY_CTRL_INDEX"                         => undef,
        "NV_PPWR_PMU_RESIDENCY_STATE_INDEX"                        => undef,
        "NV_PPWR_PMU_RESIDENCY_STATE"                              => undef
    },
    'control' => {
        "NV_PPWR_PMU_ROOT_GATING_CTRL"                             => undef,
        "NV_PPWR_PMU_ROOT_GATING_STATUS"                           => undef,
        "NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG"                 => undef,
        "NV_XPL_SHARED_DL_TX_PRI_XPL_DL_TX_XCLK_CG1"               => undef,
        "NV_XPL_SHARED_DL_RX_PRI_XPL_DL_RX_XCLK_CG1"               => undef,
        "NV_XPL_SHARED_DL_TL_TX_IF_PRI_XPL_DL_TL_TX_IF_XCLK_CG1"   => undef,
        "NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG1"                => undef,
        "NV_XPL_SHARED_PL_LANES_PRI_XPL_PL_LANES_XCLK_CG1"         => undef,
        "NV_NVLPW_CTRL_CG_BLCG_0"                                  => undef,
        "NV_NVLPW_TREX_CG1_0"                                      => undef,
        "NV_NVLPW_TLW_CTRL_CG1_0"                                  => undef,
        "NV_NVLPW_RLW_CTRL_CG1_0"                                  => undef,
        "NV_NVLPW_MVB_TX_MVB_TX_CG1_0"                             => undef,
        "NV_NVLPW_MVB_RX_MVB_RX_CG1_0"                             => undef,
        "NV_NVLPW_CTRL_CG_BLCG_ALL"                                => undef,
        "NV_GIN_PRI_GIN_CG_ALL"                                    => undef,
        "NV_GIN_PRI_GIN_CG1_ALL"                                   => undef,
        "NV_PERF_PMMROUTER_PERFMON_CG2_SECURE"                     => undef,
        "NV_PERF_PMMROUTER_PROFILING_CG2_SECURE"                   => undef,
        # "NV_NVLPW_CTRL_CG_ALL"                                     => undef,
        "NV_NVLPW_TREX_CG1_ALL"                                    => undef,
        "NV_NVLPW_TLW_CTRL_CG1_ALL"                                => undef,
        "NV_NVLPW_RLW_CTRL_CG1_ALL"                                => undef,
        "NV_NVLPW_MVB_TX_MVB_TX_CG1_ALL"                           => undef,
        "NV_NVLPW_MVB_RX_MVB_RX_CG1_ALL"                           => undef,
        "NV_PPWR_PMU_GATE_CTRL_0"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_1"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_2"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_3"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_4"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_5"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_6"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_7"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_9"                                  => undef,
        "NV_PPWR_PMU_GATE_CTRL_10"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_11"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_12"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_13"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_15"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_16"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_17"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_18"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_20"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_21"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_22"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_23"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_25"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_26"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_27"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_28"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_29"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_30"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_31"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_33"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_34"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_35"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_36"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_39"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_40"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_41"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_42"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_44"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_45"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_46"                                 => undef,
        "NV_PPWR_PMU_GATE_CTRL_47"                                 => undef,
        "NV_PPWR_PMU_ROOT_GATING_STATUS"                           => undef
    },
    'video' => {
        "NV_PNVDEC0_FALCON_IMEM_PRIV_LEVEL_MASK"                   => undef,
        "NV_PNVENC_FALCON_IMEM_PRIV_LEVEL_MASK"                    => undef,
        "NV_PNVJPG_FALCON_MTHDCTX_PRIV_LEVEL_MASK"                 => undef,
        "NV_POFA_FALCON_ENGCTL_PRIV_LEVEL_MASK"                    => undef
    },
    'GPC' => {
        "NV_PGRAPH_PRI_GPC0_GPCCS_TPCS_USABLE_BY_GFX"              => undef,
        "NV_PGRAPH_PRI_GPC1_GPCCS_TPCS_USABLE_BY_GFX"              => undef,
        "NV_PGRAPH_PRI_GPC2_GPCCS_TPCS_USABLE_BY_GFX"              => undef,
        "NV_PGRAPH_PRI_GPCS_GPCCS_TPCS_USABLE_BY_GFX"              => undef,
        "NV_PGPC_PRI_GPCCS_GFX_TPC_DISABLE_NO_FS"                  => undef,
        "NV_PGRAPH_PRI_GPC0_GPCCS_GFX_TPC_DISABLE_NO_FS"           => undef,
        "NV_PGRAPH_PRI_GPC1_GPCCS_GFX_TPC_DISABLE_NO_FS"           => undef,
        "NV_PGRAPH_PRI_GPC2_GPCCS_GFX_TPC_DISABLE_NO_FS"           => undef,
        "NV_PGRAPH_PRI_GPCS_GPCCS_GFX_TPC_DISABLE_NO_FS"           => undef,
        "NV_PCHIPLET_PWR_GPC_RAM_TARGET"                           => undef,
        "NV_PCHIPLET_PWR_GPC_TPC_STATUS_0"                         => undef
    }
);

################################################################################
#              REGISTER CONTROL CONFIGURATION TABLE
################################################################################
# Purpose: Define register control strategies with flexible bit manipulation
# 
# Configuration Format:
#   - bit_position: 'whole' | <single_bit> | '<high>:<low>'
#     * 'whole': Overwrite entire 32-bit register
#     * Single bit (e.g., 31): Modify only specified bit
#     * Bit range (e.g., '7:1'): Modify bits [7:1]
#   - enable_value/disable_value: Decimal or hex (0x prefix)
# 
# Chip-specific configurations:
#   - gr10x: GR10x chip power management controls
#   - gr15x: GR15x chip power management controls
#   - gb202: GB202 chip power management controls (reserved)
#   - gb100: GB100 chip power management controls (reserved)
#
# Note: Configuration loaded from regControlConfig.pl module
################################################################################

# Load register control configuration from external module
require 'regControlConfig.pl';
my %regControlConfig = get_reg_control_config($chip);

# Load register threshold configuration from external module
require 'regThresholdConfig.pl';
my %regThresholdConfig = get_reg_threshold_config($chip);

################################################################################
#                        FUNCTION QUICK REFERENCE
################################################################################
#
# Core Functions:
#   regControl()           - Main entry for register control operations
#   regDirect()            - Direct register access by absolute address
#   _executeRegControl()   - Execute read/write operations  
#   _parseBitPosition()    - Parse bit position and generate mask
#
# Register Operations:
#   regFromJson()          - Load register addresses from JSON
#   regTest()              - Test all registers and export to CSV
#   regTestFromJson()      - Test registers directly from JSON
#   blcgRead()             - Read BLCG registers from blcg.sh and export CSV
#   slcgRead()             - Read SLCG registers from slcg.sh and export CSV
#
# Power Management:
#   engResidency()         - Measure engine residency percentage
#   priHoldOff()           - Control engine holdoff state
#   videoWakeup()          - Keep video engines awake
#   GPCWakeup()            - Keep GPC awake
#
# Testing & Debug:
#   priTest()              - Test PRI functionality
#   priHisBufTest()        - Test PRI history buffer
#   allowCfg()             - Configure blocker range settings
#
# Utilities:
#   write_to_csv()         - Append row to CSV file
#
################################################################################

################################################################################
#                          FUNCTION TABLE
################################################################################
our %func = (
    'regTest'         => \&regTest,
    'regFromJson'     => \&regFromJson,
    'priHoldOff'      => \&priHoldOff,
    'regTestFromJson' => \&regTestFromJson,
    'priHisBufTest'   => \&priHisBufTest,
    'priTest'         => \&priTest,
    # 'engResidency'  => \&engResidency,  # Removed from function table - handled specially
    'videoWakeup'     => \&videoWakeup,
    'GPCWakeup'       => \&GPCWakeup,
    'regControl'      => \&regControl,    # control the registers
    'regDirect'       => \&regDirect,     # direct register access by absolute address
    'regThreshold'    => \&regThreshold,  # threshold configuration control
    'blcgRead'        => \&blcgRead,      # read BLCG checks from blcg.sh into CSV
    'slcgRead'        => \&slcgRead,      # read SLCG checks from slcg.sh into CSV
);

################################################################################
#                           HELP MESSAGE
################################################################################
if($help){
    print "Available functions: ", join(", ", keys %func), "\n";
    print <<"END_HELP";

    ============================================================================
    Available Functions and Arguments:
    ============================================================================
    
    === Register Configuration and Testing ===
    
    regFromJson     -- Load register addresses from JSON file
                    -- Optional args: 'dump' to read and display values
                    -- Example: --Feature regFromJson --args dump
    
    regTest         -- Test all defined registers and export to CSV
                    -- No arguments required
                    -- Example: --Feature regTest
    
    regTestFromJson -- Test registers directly from JSON and export to CSV
                    -- Optional args: 'dump' to read values
                    -- Example: --Feature regTestFromJson --args dump

    blcgRead        -- Read BLCG registers listed in blcg.sh and export to CSV
                    -- Optional args: [input_sh] [output_csv]
                    -- CSV columns: register name, bits, POR value, readback value, whole value
                    -- Examples:
                       • --Feature blcgRead
                       • --Feature blcgRead --args blcg.sh my_blcg.csv

    slcgRead        -- Read SLCG registers listed in slcg.sh and export to CSV
                    -- Optional args: [input_sh] [output_csv]
                    -- CSV columns: register name, bits, POR value, readback value, whole value
                    -- Examples:
                       • --Feature slcgRead
                       • --Feature slcgRead --args slcg.sh my_slcg.csv
    
    === Register Control (Named Controls) ===
    
    regControl      -- Control registers via predefined configurations
                    -- Args: <control_type> <action> [more_operations...]
                    -- Control types:
                       • NVDCLK_SD, PCIE_BLCG, PCIE_SLCG
                       • ELCG_GR, ELCG_NVDEC_0, ELCG_COPY_0
                       • NVLINK_BLCG_ALL, etc.
                    -- Actions: enable, disable, read
                    -- Bit position support:
                       • 'whole'     - Write entire register value
                       • Single bit  - e.g., 31
                       • Bit range   - e.g., 7:1
                    -- Examples:
                       • --Feature regControl --args NVDCLK_SD enable
                       • --Feature regControl --args PCIE_BLCG disable
                       • --Feature regControl --args ELCG_ALL enable
                       • --Feature regControl --args NVDCLK_SD enable PCIE_BLCG enable
    
    === Register Control (Direct Access) ===
    
    regDirect       -- Direct register access by absolute address
                    -- Args: <address> <action> [bit_position] [value]
                    -- Parameters:
                       • address:      Hex address (with/without 0x prefix)
                       • action:       read, write
                       • bit_position: 'whole', single bit, or range (write only)
                       • value:        Decimal or hex with 0x prefix (write only)
                    -- Examples:
                       • Read:         --Feature regDirect --args 0x8c080 read
                       • Write whole:  --Feature regDirect --args 0x8c080 write whole 0x12345678
                       • Write bit:    --Feature regDirect --args 0x8c100 write 31 1
                       • Write range:  --Feature regDirect --args 0x8c200 write 7:1 0x7F
    
    === Threshold Configuration ===
    
    regThreshold    -- Configure engine threshold parameters
                    -- Args: <threshold_name> <action> [values...]
                    -- Threshold names:
                       • ELCG_GR, ELCG_NVDEC_0, ELCG_COPY_0
                       • ELCG_OFA_0, ELCG_NVJPG_0, etc.
                       • _ALL family alias: ELCG_NVDEC_ALL, ELCG_NVJPG_ALL,
                                            ELCG_COPY_ALL, ELCG_OFA_ALL
                    -- Actions: read, write, list
                    -- Values (write only):
                       • MANT BEFORE AFTER       (3 values - EXP unchanged)
                       • EXP MANT BEFORE AFTER   (4 values - all fields written)
                    -- Examples:
                       • Read:         --Feature regThreshold --args ELCG_GR read
                       • Write 3-val:  --Feature regThreshold --args ELCG_GR write 5 10 8
                       • Write 4-val:  --Feature regThreshold --args ELCG_GR write 7 5 10 8
                       • List all:     --Feature regThreshold --args list
    
    === Engine Residency Measurement ===
    
    engResidency    -- Measure engine active/idle residency percentage
                    -- Args: <engine_name> [more_engines...]
                    -- Required: -t <milliseconds> (measurement duration)
                    -- Optional: --loop <count> (number of measurement iterations, default: 1)
                    -- Engine names (chip-dependent):
                       • ELCG_GR, ELCG_NVDEC0, ELCG_NVDEC1
                       • ELCG_COPY_0, ELCG_NVJPG0, FGRPPG_NVDEC, etc.
                    -- Note: Available engines vary by chip type
                    -- Examples:
                       • Single:    --Feature engResidency --args ELCG_GR -t 1000
                       • Multiple:  --Feature engResidency --args ELCG_NVDEC0 ELCG_NVDEC1 -t 2000
                       • With loop: --Feature engResidency --args ELCG_GR -t 1000 --loop 100
                       • With BDF:  --bdf 0a:00.0 --Feature engResidency --args ELCG_GR -t 1000
    
    === Wakeup Control ===
    
    videoWakeup     -- Keep video engines awake by periodic register reads
                    -- Args: [loop_count] (default: DEFAULT_WAKEUP_LOOPS=1000)
                    -- Example: --Feature videoWakeup --args 1000
    
    GPCWakeup       -- Keep GPC (Graphics Processing Cluster) awake
                    -- Args: [loop_count] (default: DEFAULT_WAKEUP_LOOPS=1000)
                    -- Example: --Feature GPCWakeup --args 500
    
    === PRI (Privileged Ring Interconnect) Operations ===
    
    priHoldOff      -- Control engine holdoff state
                    -- Args: <engine_number> <flag>
                    -- Parameters:
                       • engine_number: Engine bit position (0-31)
                       • flag:          0 (disable) or 1 (enable)
                    -- Examples:
                       • Enable:   --Feature priHoldOff --args 5 1
                       • Disable:  --Feature priHoldOff --args 5 0
    
    priTest         -- Test PRI functionality (blocker and PM config)
                    -- No arguments required
                    -- Example: --Feature priTest
    
    priHisBufTest   -- Test PRI history buffer functionality
                    -- No arguments required
                    -- Example: --Feature priHisBufTest
    
    ============================================================================
    Complete Usage Examples:
    ============================================================================
    
    # Basic register operations
    perl lpe.pl --Feature regFromJson --args dump
    perl lpe.pl --Feature regTest
    perl lpe.pl --Feature blcgRead
    perl lpe.pl --Feature slcgRead
    
    # Register control
    perl lpe.pl --Feature regControl --args NVDCLK_SD enable
    perl lpe.pl --Feature regControl --args ELCG_ALL enable
    perl lpe.pl --Feature regDirect --args 0x8c080 read
    
    # Threshold configuration
    perl lpe.pl --Feature regThreshold --args list
    perl lpe.pl --Feature regThreshold --args ELCG_GR write 5 10 8
    
    # Engine residency measurement (IMPORTANT: -t required!)
    perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_GR -t 1000
    perl lpe.pl --chip gb202 --Feature engResidency --args ELCG_NVDEC1 -t 1000
    perl lpe.pl --Feature engResidency --args ELCG_COPY_0 ELCG_COPY_1 -t 2000
    perl lpe.pl --chip gb100 --Feature engResidency --args ELCG_GR -t 1000 --loop 100
    
    # With specific BDF address
    perl lpe.pl --bdf 0a:00.0 --Feature regControl --args NVDCLK_SD enable
    perl lpe.pl --bdf 04:00.0 --chip gb20x --Feature engResidency --args ELCG_GR -t 1000
    
    # Wakeup control
    perl lpe.pl --Feature videoWakeup --args 1000
    perl lpe.pl --Feature GPCWakeup --args 500
    
    # PRI operations
    perl lpe.pl --Feature priHoldOff --args 5 1
    perl lpe.pl --Feature priTest
    
    ============================================================================
    Command Line Options:
    ============================================================================
    --chip <type>       Chip type (gr10x|gr15x|gb202|gb100|gb20x, default: gr10x)
    --Feature <func>    Function to execute (see above)
    --args <args>       Function arguments (comma-separated)
    --bdf <address>     GPU BDF address (e.g., 09:00.0, auto-detect if omitted)
    --time/-t <ms>      Sleep time in milliseconds (REQUIRED for engResidency)
    --loop <count>      Loop count for engResidency (default: 1)
    --no_color          Disable color output (useful for logging or non-TTY)
    --help/-h           Show this help message
    
END_HELP
    exit 0;
}

################################################################################
# Display chip configuration and remind user to verify
################################################################################
print "\n" . "=" x 70 . "\n";
print colored("CHIP CONFIGURATION", "bold cyan") . "\n";
print "=" x 70 . "\n";
print colored("[INFO]", "cyan") . " Current chip parameter: " . colored("$chip", "bold yellow") . "\n";
print colored("[INFO]", "cyan") . " BDF address: $gpu_id\n";
print colored("[INFO]", "cyan") . " Register config file: ${chip}_registers.json\n";
print "\n";
print colored("[IMPORTANT]", "bold yellow") . " Please verify that chip parameter matches your hardware!\n";
print "  • If your hardware is gr10x, use: --chip gr10x\n";
print "  • If your hardware is gr15x, use: --chip gr15x\n";
print "  • If your hardware is gb20x, use: --chip gb20x\n";
print "  • If your hardware is gb100, use: --chip gb100\n";
print "  • If your hardware is gb202, use: --chip gb202\n";
print "\n";
print colored("[WARNING]", "yellow") . " Using incorrect chip parameter may cause:\n";
print "  • Incorrect register addresses\n";
print "  • Wrong engine ID mappings\n";
print "  • Unexpected behavior or failed operations\n";
print "=" x 70 . "\n\n";

# Test GPU device accessibility
print colored("[INFO]", "cyan") . " Testing GPU device accessibility...\n";
my $test_result = testGPUAccess($gpu_id);
if (!$test_result) {
    print colored("[WARNING]", "yellow") . " GPU device '$gpu_id' may not be accessible!\n";
    print "Please verify:\n";
    print "  1. BDF address is correct (device exists)\n";
    print "  2. Running with Administrator/root privileges\n";
    print "  3. GPU driver is loaded\n";
    print "  4. Low-level tool (nvpex2/mcppci) is working properly\n";
    print "\nContinuing anyway (register operations may fail)...\n\n";
} else {
    print colored("[SUCCESS]", "green") . " GPU device '$gpu_id' is accessible!\n\n";
}

regFromJson();

################################################################################
#                     MAIN EXECUTION & ROUTING
################################################################################

if ($func eq 'engResidency') {
    # Special handling for engResidency to process multiple engines
    if (!defined $sleep_time) {
        print "Error: Sleep time (-t) is required for engResidency function\n";
        exit 1;
    }
    if (@func_args) {
        foreach my $arg (@func_args) {
            engResidency($arg, $sleep_time, $loop_count);
        }
    } else {
        print "Error: No arguments provided for engResidency function\n";
        exit 1;
    }
} elsif (exists $func{$func}) {
    $func{$func}->(@func_args);
}
else {
    print "Available functions: ", join(", ", keys %func), "\n";
}

################################################################################
#                      REGISTER OPERATIONS
################################################################################

################################################################################
# regTest - Test all defined registers and export to CSV
################################################################################
# Purpose: Read all registers in %reg and save values to CSV file
# Output: <chip>_register_data.csv with [Group, Name, Address, Value]
################################################################################
sub regTest
{
    my $csv = Text::CSV->new({ binary => 1, eol => "\n" })
    or die "Cannot use CSV: " . Text::CSV->error_diag();

    open my $fh, '>', $reg_csv or die "Could not open '$reg_csv' $!";

    # CSV header
    $csv->print($fh, ['Field', 'Name', 'Address', 'Value']);
    
    # Iterate through all register groups
    foreach my $group (keys %reg) {
        foreach my $key (keys %{$reg{$group}}) {   
            if (defined($reg{$group}{$key})) {
                my $rd = regRdBar($gpu_id, "0", $reg{$group}{$key});
                print "Test:\t[ $group | $key ]:\tAddr:$reg{$group}{$key}:\t".$rd."\n";
                $csv->print($fh, [$group,$key,$reg{$group}{$key}, sprintf("0x%X", hex($rd))]);
            }
        }
    }

    close $fh or die "Could not close '$reg_csv' $!";
}

################################################################################
# regFromJson - Load register addresses from JSON configuration
################################################################################
# Purpose: Populate %reg with addresses from chip-specific JSON file
# Args: $flag - Optional 'dump' flag to read and display register values
# 
# Chip-specific JSON files:
#   - gr10x_registers.json  : GR10x chip register definitions
#   - gb202_registers.json  : GB202 chip register definitions  
#   - gb100_registers.json  : GB100 chip register definitions
#
# Note: JSON file selection based on $chip variable (set via --chip parameter)
################################################################################
sub regFromJson
{
    my $flag = $_[0];
    my $file = $chip.'_registers.json';  # Load chip-specific register definitions
    open my $fh, '<', $file or die "Can not open file! '$file' $!";
    my $json_text = do { local $/; <$fh> };
    close $fh;

    my $registers = decode_json($json_text);
    
    # Match JSON entries to %reg structure
    foreach my $group (keys %reg) {
        foreach my $key (keys %{$reg{$group}}) {
            if (exists $registers->{$key}) {
                # Extract and store hex address (strip '0x' prefix)
                $reg{$group}{$key} = sprintf("%x", hex((split('0x',$registers->{$key}))[1]) ); 
                # Optional: Read and display current value
                if (defined($flag) and $flag eq 'dump') {
                    my $rd = regRdBar($gpu_id, "0", $reg{$group}{$key});
                    print "Test:\t[ $group | $key ]:\tAddr:$reg{$group}{$key}:\t".$rd."\n";
                }
            } else {
                # Suppress warning for missing register definitions
                # Uncomment below line for debugging:
                # my $formatted_str = sprintf("%-40s", $key);
                # warn "[Warning] Register $formatted_str not found\n";
            }
        }
    }
    # Print register table for debugging (uncomment if needed)
    # print Dumper(\%reg);
}

################################################################################
# priHisBufTest - Test PRI history buffer functionality
################################################################################
# Purpose: Read and test SYS and SYSB PRI history buffers
# Args: $flag - Optional flag (currently unused)
# Note: Requires pri group registers in JSON
################################################################################
sub priHisBufTest
{
    my $flag = $_[0];
    my $rd;
    
    # Configure SYS history buffer
    $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_CTRL'});
    $rd = hex($rd);
    $rd &= ~( 1 << 12);  # Clear DISABLE bit (bit 12)
    $rd = sprintf("%x", $rd);
    regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_CTRL'}, $rd);
    # Read SYS buffer entries (16 entries)
    foreach my $i (0..15) {
        $rd = hex($rd) & (~0xf);  # Clear index bits [3:0]
        $rd += $i;                 # Set index
        $rd = sprintf("%x", $rd);
        regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_CTRL'}, $rd);
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ0'});
        print "SYS: Read0 $rd \n";
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ1'});
        print "SYS: Read1 $rd \n";
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYS_PRI_HISTORY_BUFFER_READ2'});
        print "SYS: Read2 $rd \n";
    }
    
    # Configure SYSB history buffer
    $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_CTRL'});
    $rd = hex($rd);
    $rd &= ~( 1 << 12);  # Clear DISABLE bit (bit 12)
    $rd = sprintf("%x", $rd);
    regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_CTRL'}, $rd);
    
    # Read SYSB buffer entries (16 entries)
    foreach my $i (0..15) {
        $rd = hex($rd) & (~0xf);  # Clear index bits [3:0]
        $rd += $i;                 # Set index
        $rd = sprintf("%x", $rd);
        regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_CTRL'}, $rd);
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ0'});
        print "SYSB: Read0 $rd \n";
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ1'});
        print "SYSB: Read1 $rd \n";
        $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPRIV_SYSB_PRI_HISTORY_BUFFER_READ2'});
        print "SYSB: Read2 $rd \n";
    }
}

################################################################################
# regTestFromJson - Test registers directly from JSON and export to CSV
################################################################################
# Purpose: Read JSON file, test all registers, save to CSV
# Args: $flag - 'dump' to read register values, otherwise only parse
# Output: <chip>_register_data.csv
# Note: Independent of %reg structure
################################################################################
sub regTestFromJson
{
    my $flag = $_[0];
    my $file = $chip.'_registers.json';
    open my $fh_json, '<', $file or die "Can not open file! '$file' $!";
    my $json_text = do { local $/; <$fh_json> };
    close $fh_json;

    my $registers = decode_json($json_text);
    my $addr;

    my $csv = Text::CSV->new({ binary => 1, eol => "\n" })
    or die "Cannot use CSV: " . Text::CSV->error_diag();

    open my $fh_csv, '>', $reg_csv or die "Could not open '$reg_csv' $!";

    $csv->print($fh_csv, ['Field', 'Name', 'Address', 'Value']);

    foreach my $key (keys %$registers) {
        if (exists $registers->{$key}) {
            $addr = sprintf("%x", hex((split('0x',$registers->{$key}))[1]) ); 
            if ($flag eq 'dump') {
                my $rd = regRdBar($gpu_id, "0", $addr);
                print "Test:\tReg: $key Addr: $addr:\t".$rd."\n";
                $csv->print($fh_csv, [ 'NA',$key,$addr, sprintf("0x%X", hex($rd))]);
            }
        } else {
            my $formatted_str = sprintf("%-40s", $key);
            warn "[Warning] Register $formatted_str not found\n";
        }
    }
    
    close $fh_csv or die "Could not close '$reg_csv' $!";
}

################################################################################
# blcgRead - Read BLCG registers listed in blcg.sh and export to CSV
################################################################################
# Purpose: Parse echo/sudo pairs from blcg.sh, read each register address, extract
#          the requested bit field, and save results to CSV.
# Args:
#   $input_file - Optional shell script path (default: blcg.sh next to lpe.pl)
#   $output_csv - Optional CSV path (default: <chip>_blcg_readback.csv)
# Output CSV columns:
#   register name, bits, POR value, readback value, whole value
################################################################################
sub blcgRead
{
    my ($input_file, $output_csv) = @_;
    $input_file ||= catfile($FindBin::Bin, 'blcg.sh');
    $output_csv ||= $chip . '_blcg_readback.csv';

    _clockGatingRead('BLCG', $input_file, $output_csv);
}

################################################################################
# slcgRead - Read SLCG registers listed in slcg.sh and export to CSV
################################################################################
# Purpose: Parse echo/sudo pairs from slcg.sh, read each register address, extract
#          the requested bit field, and save results to CSV.
# Args:
#   $input_file - Optional shell script path (default: slcg.sh next to lpe.pl)
#   $output_csv - Optional CSV path (default: <chip>_slcg_readback.csv)
# Output CSV columns:
#   register name, bits, POR value, readback value, whole value
################################################################################
sub slcgRead
{
    my ($input_file, $output_csv) = @_;
    $input_file ||= catfile($FindBin::Bin, 'slcg.sh');
    $output_csv ||= $chip . '_slcg_readback.csv';

    _clockGatingRead('SLCG', $input_file, $output_csv);
}

################################################################################
# _clockGatingRead - Shared BLCG/SLCG readback CSV exporter
################################################################################
sub _clockGatingRead
{
    my ($cg_type, $input_file, $output_csv) = @_;

    my @checks = _parseBlcgChecks($input_file);
    unless (@checks) {
        error_exit("No $cg_type checks found in '$input_file'", 'error');
        return;
    }

    my $csv = Text::CSV->new({ binary => 1, eol => "\n" })
        or die "Cannot use CSV: " . Text::CSV->error_diag();

    open my $fh_csv, '>', $output_csv or die "Could not open '$output_csv' $!";
    $csv->print($fh_csv, ['register name', 'bits', 'POR value', 'readback value', 'whole value']);

    my $total = scalar(@checks);
    my $idx = 0;

    print colored("Reading $cg_type checks from '$input_file'\n", "bold cyan");
    print colored("Writing CSV output to '$output_csv'\n", "bold cyan");

    foreach my $check (@checks) {
        $idx++;

        my $whole_raw = regRdBar($gpu_id, "0", $check->{'address'});
        my $whole_int = hex($whole_raw);
        my $whole_value = sprintf("0x%08X", $whole_int);

        my ($mode, $high, $low, $mask, $width) = _parseBitPosition($check->{'bits'});
        my $readback_int = ($whole_int >> $low) & ((1 << $width) - 1);
        my $readback_value = sprintf("0x%X", $readback_int);

        $csv->print($fh_csv, [
            $check->{'register_name'},
            $check->{'bits'},
            $check->{'por_value'},
            $readback_value,
            $whole_value,
        ]);

        print sprintf("[%d/%d] %-70s bits %-8s POR %-4s readback %-4s whole %s\n",
                      $idx,
                      $total,
                      $check->{'register_name'},
                      $check->{'bits'},
                      $check->{'por_value'},
                      $readback_value,
                      $whole_value);
    }

    close $fh_csv or die "Could not close '$output_csv' $!";
    print colored("[DONE]", "green") . " Exported $total $cg_type readback rows to $output_csv\n";
}

################################################################################
# _parseBlcgChecks - Parse echo/sudo pairs from a clock gating shell script
################################################################################
sub _parseBlcgChecks
{
    my ($input_file) = @_;
    open my $fh, '<', $input_file or die "Can not open file! '$input_file' $!";

    my @checks;
    my $pending;
    my $line_num = 0;

    while (my $line = <$fh>) {
        $line_num++;
        chomp $line;

        if ($line =~ /^\s*echo\s+/) {
            $pending = _parseBlcgEchoLine($line, $line_num);
            next;
        }

        if (defined $pending && $line =~ /--reg\s+/) {
            my $address = _parseBlcgAddressLine($line, $line_num);
            $pending->{'address'} = $address;
            push @checks, $pending;
            $pending = undef;
        }
    }

    close $fh;
    return @checks;
}

################################################################################
# _parseBlcgEchoLine - Extract register name, bits, and POR value from echo line
################################################################################
sub _parseBlcgEchoLine
{
    my ($line, $line_num) = @_;

    $line =~ s/^\s*echo\s+//;
    $line =~ s/^\s*["']//;
    $line =~ s/["']\s*$//;

    my @parts = split(/\s*,\s*/, $line, 4);
    unless (@parts >= 3 && $parts[0] ne '' && $parts[1] ne '' && $parts[2] ne '') {
        error_exit("Invalid BLCG echo format at line $line_num: $line", 'error');
        return;
    }

    return {
        'register_name' => _trim($parts[0]),
        'bits'          => _trim($parts[1]),
        'por_value'     => _trim($parts[2]),
    };
}

################################################################################
# _parseBlcgAddressLine - Extract register address from nvpex2 --reg line
################################################################################
sub _parseBlcgAddressLine
{
    my ($line, $line_num) = @_;

    if ($line =~ /--reg\s+R:\d+:0x([0-9a-fA-F]+)/) {
        return lc($1);
    }

    error_exit("Invalid BLCG address format at line $line_num: $line", 'error');
    return;
}

################################################################################
# _trim - Remove leading and trailing whitespace
################################################################################
sub _trim
{
    my ($value) = @_;
    $value //= '';
    $value =~ s/^\s+//;
    $value =~ s/\s+$//;
    return $value;
}

################################################################################
# allowCfg - Configure blocker range settings
################################################################################
# Purpose: Set up SYSB RMF range configuration and allow index
# Note: Requires pri group registers in JSON
################################################################################
sub allowCfg
{
    regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_CFG_INDEX'}, 0x300);
    regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_CFG_APERTURE'}, 0x123220);
    regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPRIV_BLOCKER_SYSB_RMF_RANGE_ALLOW_CFG_INDEX'}, 0x301);
}

################################################################################
# priTest - Test PRI functionality
################################################################################
# Purpose: Configure blocker and test PG_STAT and PM_CONFIG
# Note: Requires pri, pmu, and sysc group registers in JSON
################################################################################
sub priTest
{
    my $rd;

    allowCfg();  # Configure blocker settings
    
    # Check power gate status
    $rd = hex(regRdBar($gpu_id, "0", $reg{'pmu'}{'NV_PPWR_PMU_PG_STAT_4'}));
    unless ($rd == 4) {
        # If not in expected state, read PM config
        $rd = regRdBar($gpu_id, "0", $reg{'sysc'}{'NV_PPRIV_SYSC_PRI_PM_CONFIG'});
        print "read NV_PPRIV_SYSC_PRI_PM_CONFIG: $reg{'sysc'}{'NV_PPRIV_SYSC_PRI_PM_CONFIG'} with $rd \n";
    }

}

################################################################################
#                         UTILITY FUNCTIONS
################################################################################

################################################################################
# error_exit - Unified error handling with colored output and exit
################################################################################
# Purpose: Provide consistent error reporting across the script
# Args:
#   $message  - Error message to display
#   $level    - Error level: 'fatal', 'error', 'warning' (default: 'fatal')
# Returns: Never returns for 'fatal' level, otherwise returns 0
# Usage:
#   error_exit("Invalid BDF address", 'fatal');    # Exits with code 1
#   error_exit("Register not found", 'error');     # Returns 0
#   error_exit("Verification mismatch", 'warning'); # Returns 0
################################################################################
sub error_exit {
    my ($message, $level) = @_;
    $level //= 'fatal';  # Default to fatal if not specified
    
    if ($level eq 'fatal') {
        print colored("[FATAL]", "bold red") . " $message\n";
        exit 1;
    } elsif ($level eq 'error') {
        print colored("[ERROR]", "red") . " $message\n";
        return 0;
    } elsif ($level eq 'warning') {
        print colored("[WARNING]", "yellow") . " $message\n";
        return 0;
    } else {
        print colored("[ERROR]", "red") . " $message\n";
        return 0;
    }
}

################################################################################
# print_table_separator - Print formatted table separator line
################################################################################
# Purpose: Provide consistent table formatting
# Args:
#   $width - Table width (default: TABLE_WIDTH_MEDIUM)
#   $char  - Separator character (default: SEPARATOR_CHAR)
################################################################################
sub print_table_separator {
    my ($width, $char) = @_;
    $width //= TABLE_WIDTH_MEDIUM;
    $char //= SEPARATOR_CHAR;
    print $char x $width . "\n";
}

################################################################################
# testGPUAccess - Test if GPU device is accessible via BDF address
################################################################################
# Purpose: Verify GPU device accessibility before executing actual operations
# Args: $bdf_addr - BDF address (e.g., "09:00.0")
# Returns: 1 = accessible, 0 = not accessible
#
# Detection coverage:
#   - Device exists
#   - Sufficient permissions
#   - Low-level tool working properly
################################################################################
sub testGPUAccess {
    my ($bdf_addr) = @_;
    
    # Try to read a common register (BAR0 offset 0)
    # This is a non-invasive test - just reading the first register
    my $test_cmd;
    
    if ($lowPwr::g_utility_id == 1) {
        $test_cmd = "$lowPwr::g_utility -gd $bdf_addr 0 0";
    } elsif ($lowPwr::g_utility_id == 2) {
        $test_cmd = "$lowPwr::g_utility -b $bdf_addr -r R:0:0";
    } elsif ($lowPwr::g_utility_id == 3) {
        $test_cmd = "$lowPwr::g_utility gd $bdf_addr 0 0";
    } else {
        return 0;  # Unknown utility
    }
    
    # Execute test command and capture both stdout and stderr
    my $output = qx/$test_cmd 2>&1/;
    $output //= '';  # Ensure $output is defined
    my $exit_code = $? >> 8;
    
    # Check if we can extract a valid register value (primary test)
    # Pattern for nvpex2: # 1c2000a1 <-
    # Pattern for mcppci: 0x12345678
    # Pattern for nvpex:  -> 0x12345678
    my $has_valid_value = 0;
    if (defined($output) && ($output =~ /\#\s+([0-9a-fA-F]{8})\s+<-/ ||          # nvpex2 format
        $output =~ /0x([0-9a-fA-F]{8})/ ||                  # mcppci/nvpex format
        $output =~ /->\s+0x([0-9a-fA-F]{8})/)) {             # nvpex format
        $has_valid_value = 1;
    }
    
    # If we got a valid register value, device is accessible (even if there are warnings)
    if ($has_valid_value) {
        return 1;  # Device accessible - we successfully read a register
    }
    
    # If no valid value AND there are error indicators, device is not accessible
    if ($exit_code != 0 || (defined($output) && $output =~ /\berror\b|\bfailed\b|invalid|not found|access.*denied|permission denied/i)) {
        print colored("[DEBUG]", "yellow") . " Test command: $test_cmd\n" if $lowPwr::g_debug_level > 0;
        print colored("[DEBUG]", "yellow") . " Test output: $output\n" if $lowPwr::g_debug_level > 0;
        return 0;  # Device not accessible
    }
    
    return 1;  # Device accessible (default to accessible if no clear errors)
}

################################################################################
# detectBDFAddress - Auto-detect NVIDIA GPU BDF address
################################################################################
# Purpose: Automatically find the first available NVIDIA GPU BDF address
# Returns: BDF address string (e.g., "0a:00.0") or undef if not found
#
# Detection method:
#   1. Try lspci command (Linux)
#   2. Try nvidia-smi (cross-platform)
#   3. Try scanning common BDF addresses with low-level tool
################################################################################
sub detectBDFAddress {
    # Method 1: Try lspci (Linux)
    my $lspci_output = qx/lspci 2>&1/;
    if ($? == 0 && $lspci_output =~ /NVIDIA/i) {
        # Parse lspci output: "0a:00.0 VGA compatible controller: NVIDIA Corporation ..."
        if ($lspci_output =~ /([0-9a-f]{2}:[0-9a-f]{2}\.[0-7]).*NVIDIA/i) {
            my $bdf = lc($1);
            print colored("[DEBUG]", "cyan") . " Detected BDF via lspci: $bdf\n" if $lowPwr::g_debug_level > 0;
            return $bdf;
        }
    }
    
    # Method 2: Try nvidia-smi (cross-platform)
    my $smi_output = qx/nvidia-smi --query-gpu=pci.bus_id --format=csv,noheader 2>&1/;
    if ($? == 0 && $smi_output =~ /\S/) {
        # Parse nvidia-smi output: "00000000:0A:00.0" or "0000:0A:00.0"
        if ($smi_output =~ /(?:[0-9a-f]{4}:)?([0-9a-f]{2}:[0-9a-f]{2}\.[0-7])/i) {
            my $bdf = lc($1);
            print colored("[DEBUG]", "cyan") . " Detected BDF via nvidia-smi: $bdf\n" if $lowPwr::g_debug_level > 0;
            return $bdf;
        }
    }
    
    # Method 3: Scan common BDF addresses (fallback)
    # Common BDF patterns: 01:00.0, 02:00.0, ..., 0f:00.0, etc.
    my @common_bdfs = (
        "01:00.0", "02:00.0", "03:00.0", "04:00.0", 
        "05:00.0", "06:00.0", "07:00.0", "08:00.0",
        "09:00.0", "0a:00.0", "0b:00.0", "0c:00.0",
        "0d:00.0", "0e:00.0", "0f:00.0", "10:00.0"
    );
    
    print colored("[DEBUG]", "cyan") . " Scanning common BDF addresses...\n" if $lowPwr::g_debug_level > 0;
    
    foreach my $test_bdf (@common_bdfs) {
        # Try to read PCI config space offset 0x00 (Vendor ID + Device ID)
        my $test_cmd;
        
        if ($lowPwr::g_utility_id == 1) {
            $test_cmd = "$lowPwr::g_utility -gc $test_bdf 0x00";
        } elsif ($lowPwr::g_utility_id == 2) {
            $test_cmd = "$lowPwr::g_utility -b $test_bdf -c 0x00";
        } elsif ($lowPwr::g_utility_id == 3) {
            $test_cmd = "$lowPwr::g_utility gc $test_bdf 0x00";
        } else {
            return undef;
        }
        
        my $output = qx/$test_cmd 2>&1/;
        my $exit_code = $? >> 8;
        
        # Check if output contains NVIDIA Vendor ID (0x10DE)
        if ($exit_code == 0 && $output =~ /10de/i) {
            print colored("[DEBUG]", "cyan") . " Detected BDF via scanning: $test_bdf\n" if $lowPwr::g_debug_level > 0;
            return $test_bdf;
        }
    }
    
    # Detection failed
    return undef;
}

################################################################################
# write_to_csv - Append row to CSV file
################################################################################
# Purpose: Helper function to write CSV rows
# Args: 
#   $csv_file - CSV filename
#   $row_ref - Array reference containing row data
################################################################################
sub write_to_csv {
    my ($csv_file, $row_ref) = @_; 

    my $csv = Text::CSV->new({ binary => 1, eol => "\n" })
      or die "Cannot use CSV: " . Text::CSV->error_diag();

    open my $fh, '>>', $csv_file or die "Cannot open $csv_file: $!";
    $csv->print($fh, $row_ref);
    close $fh;
}

################################################################################
#                      POWER MANAGEMENT FUNCTIONS
################################################################################

################################################################################
# engResidency - Measure engine residency percentage
################################################################################
# Purpose: Calculate how much time an engine spends in active state
# Args:
#   $source - Engine name (e.g., 'ELCG_GR', 'ELCG_NVDEC1')
#   $sleep  - Measurement duration in milliseconds
#   $loops  - Number of measurement iterations (default: 1)
#   $csv    - Optional CSV filename (not used, CSV output disabled)
# Output: Residency percentage (CSV output disabled)
# Supports: gb202, gr10x, gb100 chip types
################################################################################
sub engResidency
{
    my $source = $_[0];
    my $sleep  = $_[1];
    my $loops  = $_[2] // 1;
    my $csv    = $_[3];
    my $val1 = 0;
    my $val2 = 0;
    my ($high, $low) = (0,0);
    my $id;

    # Validate sleep time parameter
    if (!defined $sleep || $sleep !~ /^\d+$/) {
        error_exit("Invalid sleep time '$sleep'. Must be a positive integer.");
    }

    print "Source: " . colored("$source", "green") . ", Sleep time: $sleep ms\n";

    # Define engine mapping based on chip type
    my %engMap;
    
    if ($chip eq 'gb202') {
        # ============================================================
        # GB202 Chip Engine Mapping
        # ============================================================
        %engMap = (
            'ELCG_GR'                    => '01',
            'ELCG_NVENC0'                => '02',
            'FGRPPG_NVENC0'              => '41',
            'ELCG_NVENC1'                => '03',
            'FGRPPG_NVENC1'              => '42',
            'ELCG_NVENC2'                => '04',
            'FGRPPG_NVENC2'              => '43',
            'ELCG_NVDEC'                 => '05',
            'FGRPPG_NVDEC'               => '44',
            'ELCG_NVDEC1'                => '06',
            'FGRPPG_NVDEC1'              => '45',
            'ELCG_NVDEC2'                => '07',
            'FGRPPG_NVDEC2'              => '46',
            'ELCG_NVDEC3'                => '08',
            'FGRPPG_NVDEC3'              => '47',
            'ELCG_NVJPG0'                => '0e',
            'FGRPPG_NVJPG0'              => '4c',
            'ELCG_NVJPG1'                => '0f',
            'FGRPPG_NVJPG1'              => '4d',
            'ELCG_NVJPG2'                => '10',
            'FGRPPG_NVJPG2'              => '4e',
            'ELCG_NVJPG3'                => '11',
            'FGRPPG_NVJPG3'              => '4f',
            'ELCG_SEC'                   => '16',
            'ELCG_CE0'                   => '17',
            'ELCG_CE1'                   => '18',
            'ELCG_CE2'                   => '19',
            'ELCG_CE3'                   => '1a',
            'ELCG_CE4'                   => '1b',
            'ELCG_CE5'                   => '1c',
            'ELCG_CE6'                   => '1d',
            'ELCG_CE7'                   => '1e',
            'ELCG_OFA0'                  => '21',
            'FGRPPG_OFA0'                => '54',
            'FG_RPPG'                    => '22',
            'ROOT_GATE_GPCCLK'           => '23',
            'ROOT_GATE_NVDCLK'           => '24',
            'HUBMMU_POWER_REQ'           => '25',
            'SYS0_HUBMMU_POWER_REQ'      => '25',
            'RMT_PRIV_REQ'               => '26',
            'FECS_POWER_REQ'             => '27',
            'SYS0A_PRI_HUB_POWER_REQ'    => '27',
            'FECSB_POWER_REQ'            => '28',
            'SYS0B_PRI_HUB_POWER_REQ'    => '28',
            'FECSC_POWER_REQ'            => '29',
            'SYS0C_PRI_HUB_POWER_REQ'    => '29',
            'ELCG_NVENC3'                => '39',
            'FGRPPG_NVENC3'              => '40',
            'SYSCLK'                     => '54',
        );
    } elsif ($chip eq 'gr10x') {
        # ============================================================
        # GR10x Chip Engine Mapping
        # ============================================================
        %engMap = (

            'ELCG_GR'                    => '01',
            'ELCG_NVDEC'                 => '05',            
            'ELCG_NVDEC1'                => '06',
            'ELCG_NVDEC2'                => '07',
            'ELCG_NVDEC3'                => '08',
            'ELCG_NVDEC4'                => '09',
            'ELCG_NVDEC5'                => '0a',
            'ELCG_NVDEC6'                => '0b',
            'ELCG_NVDEC7'                => '0c',

            'ELCG_NVJPG0'                => '0e',
            'ELCG_NVJPG1'                => '0f',
            'ELCG_NVJPG2'                => '10',
            'ELCG_NVJPG3'                => '11',
            'ELCG_NVJPG4'                => '12',
            'ELCG_NVJPG5'                => '13',
            'ELCG_NVJPG6'                => '14',
            'ELCG_NVJPG7'                => '15',            

            'ELCG_CE0'                   => '17',
            'ELCG_CE1'                   => '18',
            'ELCG_CE2'                   => '19',
            'ELCG_CE3'                   => '1a',
            'ELCG_CE4'                   => '1b',
            'ELCG_CE5'                   => '1c',
            'ELCG_CE6'                   => '1d',
            'ELCG_CE7'                   => '1e',
            'ELCG_CE8'                   => '1f',
            'ELCG_CE9'                   => '20',
            'ELCG_CE10'                  => '2a',
            'ELCG_CE11'                  => '2b',
            'ELCG_CE12'                  => '2c',
            'ELCG_CE13'                  => '2d',
            'ELCG_CE14'                  => '2e',
            'ELCG_CE15'                  => '2f',
            'ELCG_CE16'                  => '30',
            'ELCG_CE17'                  => '31',
            'ELCG_CE18'                  => '32',
            'ELCG_CE19'                  => '33',
            'ELCG_OFA0'                  => '21', 
            'ELCG_OFA1'                  => '38', 
            # 'ENG_VD_DIS'                 => '00',
            # 'ENG_VD_EN'                  => '01',
            'ROOT_GATE_NVDCLK'           => '24',

            'ELCG_SEC'                   => '16',            
        );
    } elsif ($chip eq 'gb100') {
        # ============================================================
        # GB100 Chip Engine Mapping
        # ============================================================
        %engMap = (
            'ELCG_GR'                    => '01',
            'ELCG_NVDEC'                 => '05',            
            'ELCG_NVDEC1'                => '06',
            'ELCG_NVDEC2'                => '07',
            'ELCG_NVDEC3'                => '08',
            'ELCG_NVDEC4'                => '09',
            'ELCG_NVDEC5'                => '0a',
            'ELCG_NVDEC6'                => '0b',
            'ELCG_NVDEC7'                => '0c',
            'ELCG_NVJPG0'                => '0E',
            'ELCG_NVJPG1'                => '0F',
            'ELCG_NVJPG2'                => '10',
            'ELCG_NVJPG3'                => '11',
            'ELCG_NVJPG4'                => '12',
            'ELCG_NVJPG5'                => '13',
            'ELCG_NVJPG6'                => '14',
            'ELCG_NVJPG7'                => '15',
            'ELCG_SEC'                   => '16',
            'ELCG_CE0'                   => '17',
            'ELCG_CE1'                   => '18',
            'ELCG_CE2'                   => '19',
            'ELCG_CE3'                   => '1a',
            'ELCG_CE4'                   => '1b',
            'ELCG_CE5'                   => '1c',
            'ELCG_CE6'                   => '1d',
            'ELCG_CE7'                   => '1e',
            'ELCG_CE8'                   => '1f',
            'ELCG_CE9'                   => '20',
            'ELCG_CE10'                  => '2a',
            'ELCG_CE11'                  => '2b',
            'ELCG_CE12'                  => '2c',
            'ELCG_CE13'                  => '2d',
            'ELCG_CE14'                  => '2e',
            'ELCG_CE15'                  => '2f',
            'ELCG_CE16'                  => '30',
            'ELCG_CE17'                  => '31',
            'ELCG_CE18'                  => '32',
            'ELCG_CE19'                  => '33',
            'ELCG_OFA0'                  => '21', 
            'ELCG_OFA1'                  => '38', 
            'SYS0'                       => '25',
            'SYS0A'                      => '27',
            'SYS0B'                      => '28',
            'SYS0C'                      => '29',
            'SYS1A'                      => '35',
            'SYS1B'                      => '36',
            'SYS1C'                      => '37',
            # 'SYS0_HUBMMU'                => '25',
            # 'RMT_PRIV_REQ'               => '26',
            # 'SYS0A_PRIV'                 => '27',
            # 'SYS0B_PRIV'                 => '28',
            # 'SYS0C_PRIV'                 => '29',

        );
    } elsif ($chip eq 'gr15x') {
        # ============================================================
        # GR15x Chip Engine Mapping
        # ============================================================
        %engMap = (

            'ELCG_GR'                    => '01',
            'ELCG_NVDEC'                 => '05',            
            'ELCG_NVDEC1'                => '06',
            'ELCG_NVDEC2'                => '07',
            'ELCG_NVDEC3'                => '08',
            'ELCG_NVDEC4'                => '09',
            'ELCG_NVDEC5'                => '0a',
            'ELCG_NVDEC6'                => '0b',
            'ELCG_NVDEC7'                => '0c',

            'ELCG_NVJPG0'                => '0e',
            'ELCG_NVJPG1'                => '0f',
            'ELCG_NVJPG2'                => '10',
            'ELCG_NVJPG3'                => '11',
            'ELCG_NVJPG4'                => '12',
            'ELCG_NVJPG5'                => '13',
            'ELCG_NVJPG6'                => '14',
            'ELCG_NVJPG7'                => '15',            

            'ELCG_CE0'                   => '17',
            'ELCG_CE1'                   => '18',
            'ELCG_CE2'                   => '19',
            'ELCG_CE3'                   => '1a',
            'ELCG_CE4'                   => '1b',
            'ELCG_CE5'                   => '1c',
            'ELCG_CE6'                   => '1d',
            'ELCG_CE7'                   => '1e',
            'ELCG_CE8'                   => '1f',
            'ELCG_CE9'                   => '20',
            'ELCG_CE10'                  => '2a',
            'ELCG_CE11'                  => '2b',
            'ELCG_CE12'                  => '2c',
            'ELCG_CE13'                  => '2d',
            'ELCG_CE14'                  => '2e',
            'ELCG_CE15'                  => '2f',
            'ELCG_CE16'                  => '30',
            'ELCG_CE17'                  => '31',
            'ELCG_CE18'                  => '32',
            'ELCG_CE19'                  => '33',
            'ELCG_OFA0'                  => '21', 
            'ELCG_OFA1'                  => '38', 
            'ROOT_GATE_NVDCLK'           => '24',

            'ELCG_SEC'                   => '16',            
        );
    } elsif ($chip eq 'gb20x') {
        # ============================================================
        # GB20x Chip Engine Mapping
        # ============================================================
        %engMap = (
            'ROOT_GATE_NVDCLK'           => '24',
            'ELCG_GR'                    => '01',
        );
    } else {
        error_exit("Unsupported chip type: $chip. Only 'gb202', 'gr10x', 'gr15x', 'gb100', and 'gb20x' are supported.");
    }

    # Validate engine name exists in mapping
    unless (exists $engMap{$source}) {
        error_exit("Unknown engine '$source' for chip '$chip'.\nAvailable engines: " . join(", ", sort keys %engMap));
    }

    # Save original loop count for CSV recording
    my $original_loops = $loops;
    my $current_iteration = 0;

    print "Starting residency measurement: " . colored("$original_loops", "bold yellow") . " iteration(s)\n";
    # CSV output disabled - removed CSV file print statement

    while ($loops--) {
        $current_iteration = $original_loops - $loops;  # Calculate current iteration number (1-based)
        # Get engine ID from mapping
        $id = hex($engMap{$source});
        print "source id = $id \n";

        # Configure residency control index
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'}, '00000200');
        $val1 =  regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'});
        print "$reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'} $val1\n";

        # Build residency control value: [31]=Enable, [29]=Type, [28]=Polarity, [7:0]=Engine ID
        # Example: id=5 → 0x00000005 | (1<<31) | (1<<29) = 0xA0000005
        $val1 = $id + (NV_PPWR_PMU_RESIDENCY_CTRL_TYPE_LEVEL << 29) + (NV_PPWR_PMU_RESIDENCY_CTRL_EN_ENABLE << 31);
        $val2 = $val1 + (NV_PPWR_PMU_RESIDENCY_CTRL_POLARITY_HIGH_ACTIVE << 28);
        $val1 = sprintf("%x", $val1);
        $val2 = sprintf("%x", $val2);

        print "set $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'} with $val2 \n";
        print "set $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'} with $val1 \n";

        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'},  $val2);
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'},  $val1);

        # Start residency measurement
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL'}, NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL_EN_EN);
        
        # Wait for specified duration
        usleep(1000 * $sleep);
        
        # Stop residency measurement
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL'}, NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL_EN_DIS);

        $val1 =  regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL'});
        print "$reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_GLOBAL'} $val1\n";

        # Set state index to read counters
        $val1 = sprintf("%x", 1<<8);
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE_INDEX'}, $val1);
        $val1 =  regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE_INDEX'});
        print "$reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE_INDEX'} $val1\n";

        # Read high (active) and low (inactive) counters
        $high =  hex(regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE'}));
        $low  =  hex(regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE'}));

        # Calculate residency percentage
        # Residency % = (High Count) / (High Count + Low Count) × 100
        # 
        # Interpretation:
        #   - High %: Time spent in active/busy state
        #   - Low %:  Time spent in idle/inactive state
        #   - Special case: Both counters = 0 → residency = 0%
        print "High|Low = $high | $low \n";
        my $residency;
        if ($low == 0 && $high == 0) {
            $residency = 0;
        } else {
            $residency = (100*$high) / ($high + $low);
            $residency = sprintf("%.3f", $residency);
        }
        print "Residency = " . colored("$residency %", "blue") . "\n";
    
        # Clear counters
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'}, '00000200');
        $val1 =  regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'});
        print "$reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL_INDEX'} $val1\n";

        $val1 = sprintf("%x", NV_PPWR_PMU_RESIDENCY_CTRL_CLEAR_TRIGGER << 30);
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'}, $val1);
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_CTRL'}, $val1);
        print "Test completed after waiting for $sleep ms \n";

        # Verify counters are cleared
        $val1 = sprintf("%x", 1<<8);
        regWrBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE_INDEX'}, $val1);
        $high =  hex(regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE'}));
        $low  =  hex(regRdBar($gpu_id, 0, $reg{'residency'}{'NV_PPWR_PMU_RESIDENCY_STATE'}));
        print "High|Low = $high | $low after cleaning\n";
        
        print "Iteration $current_iteration/$original_loops completed\n";
    }
    
    print "\n" . colored("[SUCCESS]", "green") . " All measurements completed!\n";
    print "  Total iterations: $original_loops\n";
    print "  Engine: $source\n";
    print "  Sleep time: $sleep ms per iteration\n\n";
}

################################################################################
# videoWakeup - Keep video engines awake by periodic register reads
################################################################################
# Purpose: Prevent video engines from entering low-power states
# Args:
#   $loops - Number of read cycles (default: DEFAULT_WAKEUP_LOOPS)
#   $sleep - Unused parameter (kept for compatibility)
# Note: Requires video group registers in JSON
################################################################################
sub videoWakeup
{
    my $loops  = $_[0] // DEFAULT_WAKEUP_LOOPS;
    my $sleep  = $_[1] // 1;

    print "Starting with $loops\n";
    while ($loops) {
        # Read video engine registers to keep them active
        $_ = regRdBar($gpu_id, 0, $reg{'video'}{'NV_PNVDEC0_FALCON_IMEM_PRIV_LEVEL_MASK'});
        $_ = regRdBar($gpu_id, 0, $reg{'video'}{'NV_PNVENC_FALCON_IMEM_PRIV_LEVEL_MASK'});
        $_ = regRdBar($gpu_id, 0, $reg{'video'}{'NV_PNVJPG_FALCON_MTHDCTX_PRIV_LEVEL_MASK'});
        $_ = regRdBar($gpu_id, 0, $reg{'video'}{'NV_POFA_FALCON_ENGCTL_PRIV_LEVEL_MASK'});

        print "*";
        $loops--;
    }
    print "\n Completed with last read from NV_POFA_FALCON_ENGCTL_PRIV_LEVEL_MASK: $_\n";

}

################################################################################
# GPCWakeup - Keep GPC (Graphics Processing Cluster) awake
################################################################################
# Purpose: Prevent GPC from entering low-power states
# Args:
#   $loops - Number of read cycles (default: DEFAULT_WAKEUP_LOOPS)
#   $sleep - Unused parameter (kept for compatibility)
# Note: Requires GPC group registers in JSON
################################################################################
sub GPCWakeup
{
    my $loops  = $_[0] // DEFAULT_WAKEUP_LOOPS;
    my $sleep  = $_[1] // 1;

    print "Starting with $loops\n";
    while ($loops) {
        # Read GPC registers to keep them active
        $_ = regRdBar($gpu_id, 0, $reg{'GPC'}{'NV_PGPC_PRI_GPCCS_GFX_TPC_DISABLE_NO_FS'});
        $_ = regRdBar($gpu_id, 0, $reg{'GPC'}{'NV_PCHIPLET_PWR_GPC_TPC_STATUS_0'});
        $_ = regRdBar($gpu_id, 0, $reg{'GPC'}{'NV_PGRAPH_PRI_GPC0_GPCCS_TPCS_USABLE_BY_GFX'});
        $_ = regRdBar($gpu_id, 0, $reg{'GPC'}{'NV_PGRAPH_PRI_GPCS_GPCCS_GFX_TPC_DISABLE_NO_FS'});

        print "*";
        $loops--;
    }
    print "\n Completed with last read from NV_PGRAPH_PRI_GPCS_GPCCS_GFX_TPC_DISABLE_NO_FS: $_\n";

}

################################################################################
# priHoldOff - Control engine holdoff state
################################################################################
# Purpose: Enable/disable engine holdoff and verify state transitions
# Args:
#   $eng  - Engine number (bit position in holdoff register)
#   $flag - Holdoff_En (1) to enable, Holdoff_Off (0) to disable
# Operation:
#   1. Set holdoff bit in ENG_HOLDOFF_0 register
#   2. Poll ENG_HOLDOFF_ENTER_0 (max 20 sec) for acknowledgment
#   3. Verify engine context status in RUNLIST_ENGINE_STATUS0
# Note: Requires pri group registers in JSON
################################################################################
sub priHoldOff
{
    my ($eng, $flag) = @_;
    my $rd;
    my $cnt = 0;
    
    # Set expected values based on holdoff enable/disable
    my @flags = (Holdoff_Off, NV_RUNLIST_ENGINE_STATUS0_CTX_STATUS_VALID);
    if ($flag == Holdoff_En) {
        $flags[0] = BLOCKED;
        $flags[1] = NV_RUNLIST_ENGINE_STATUS0_CTX_STATUS_INVALID;
    }

    # Read current holdoff register
    $rd = hex(regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPWR_PMU_ENG_HOLDOFF_0'}));
    if (defined($rd)) {
        # Modify holdoff bit for specified engine using RMW
        $rd &= ~( 1 << $eng);           # Step 1: Clear engine bit (e.g., bit 5 cleared)
        $rd |= $flags[0] << $eng;       # Step 2: Set new value (0 or 1) at bit position
        $rd = sprintf("%x", $rd);
        regWrBar($gpu_id, 0, $reg{'pri'}{'NV_PPWR_PMU_ENG_HOLDOFF_0'}, $rd);
        print "set the Enging: $eng with : 0x$rd \n";
        
        # Poll for holdoff enter acknowledgment (timeout: HOLDOFF_TIMEOUT_SEC)
        while ($cnt < HOLDOFF_TIMEOUT_SEC) {
            sleep(1);
            $rd = regRdBar($gpu_id, "0", $reg{'pri'}{'NV_PPWR_PMU_ENG_HOLDOFF_ENTER_0'});
            if (hex($rd) & (1 << $eng)) {
                last;   
            }
            $cnt ++;
        }
        if ($cnt == HOLDOFF_TIMEOUT_SEC) {
            error_exit("Timeout waiting for holdoff acknowledgment on register $reg{'pri'}{'NV_PPWR_PMU_ENG_HOLDOFF_ENTER_0'}");
        }
        
        # Verify engine status in runlist
        $rd = hex(regRdBar($gpu_id, "0", $reg{'pri'}{'NV_RUNLIST_ENGINE_STATUS0_0'}));
        print "Start to poll the RUNLIST \n";
        # Extract status bits [15:13]: right-shift 13, mask to 3 bits (0x7)
        $rd = ($rd >> 13) & 0x7;
        
        if ($rd == $flags[1]) {
            print "HoldOff $flag on engine $eng!";
            $engStatus{$eng} = $flag;  # Update global status
        }
        else {
            error_exit("HoldOff $flag failed on engine $eng. Expected status $flags[1], got $rd");
        }       
    }
    else {
        print "$reg{'pri'}{'NV_PPWR_PMU_ENG_HOLDOFF_0'} access error!"
    }
}

################################################################################
#                   REGISTER CONTROL FUNCTIONS
################################################################################

################################################################################
# regControl - Main entry point for register control operations
################################################################################
# Purpose: Process multiple register control operations in sequence
# Args: <control_type> <action> [<control_type> <action> ...]
# Actions: enable, disable, read
# Example: regControl('NVDCLK_SD', 'enable', 'PCIE_BLCG', 'disable')
################################################################################
sub regControl {
    my @args = @_;
    
    # Validate minimum arguments
    unless (@args >= 2) {
        my $msg = "Insufficient arguments\n" .
                  "Usage: regControl <control_type> <action> [more_operations...]\n" .
                  "Available control types: " . join(", ", keys %regControlConfig) . "\n" .
                  "Actions: enable, disable, read\n" .
                  "Example: regControl NVDCLK_SD_control enable NVDCLK_SD_control disable";
        error_exit($msg, 'error');
        return;
    }
    
    # Validate arguments are in pairs (control_type action)
    if (@args % 2 != 0) {
        my $msg = "Arguments must be in pairs (control_type action)\n" .
                  "Received " . scalar(@args) . " arguments (expected even number)\n" .
                  "Usage: regControl <control_type> <action> [<control_type> <action> ...]";
        error_exit($msg, 'error');
        return;
    }
    
    # Process operations in pairs (control_type, action)
    my $i = 0;
    while ($i < @args) {
        my $control_type = $args[$i];
        my $action = $args[$i + 1];
        
        unless (defined $control_type && defined $action) {
            error_exit("Missing control_type or action at position $i", 'error');
            return;
        }
        
        # Verify control type exists in configuration
        unless (exists $regControlConfig{$control_type}) {
            my $msg = "Unknown control type '$control_type'\n" .
                      "Available types: " . join(", ", keys %regControlConfig);
            error_exit($msg, 'error');
            return;
        }
        
        print "Executing: $control_type $action\n";
        _executeRegControl($control_type, $action);
        
        $i += 2;  # Advance to next pair
    }
}

################################################################################
# _parseBitPosition - Parse bit position specification and generate mask
################################################################################
# Purpose: Convert bit position string into components for register operations
#
# Input: bit_pos_str - Bit position specification string
#   Supported formats:
#     • 'whole'  : Full 32-bit register operation
#     • '31'     : Single bit operation (bit 31)
#     • '7:1'    : Bit range operation (bits 7 through 1)
#
# Returns: ($mode, $high_bit, $low_bit, $mask, $bit_width)
#   - mode:       Operation type ('whole'|'range'|'single')
#   - high_bit:   Highest bit position (31 for whole, 7 for '7:1')
#   - low_bit:    Lowest bit position (0 for whole, 1 for '7:1')
#   - mask:       Bitmask for Read-Modify-Write (RMW) operations
#   - bit_width:  Number of bits affected (32 for whole, 7 for '7:1')
#
# Mask Generation Algorithm:
#   For bit range [high:low]:
#     1. Calculate width = high - low + 1
#     2. Create width-sized mask: (1 << width) - 1
#     3. Shift mask to position: mask << low
#   Example for bits[7:1]:
#     width = 7, mask = (1<<7)-1 = 0x7F, shifted = 0x7F<<1 = 0xFE
#
# Examples:
#   'whole' => ('whole', 31, 0, 0xFFFFFFFF, 32)
#   '7:1'   => ('range', 7, 1, 0x000000FE, 7)
#   '31'    => ('single', 31, 31, 0x80000000, 1)
################################################################################
sub _parseBitPosition {
    my ($bit_pos_str) = @_;
    
    if ($bit_pos_str eq 'whole') {
        # Whole register mode: 32-bit full write
        return ('whole', 31, 0, 0xFFFFFFFF, 32);
        
    } elsif ($bit_pos_str =~ /^(\d+):(\d+)$/) {
        # Bit range format: "high:low" (e.g., "7:1")
        my ($high, $low) = ($1, $2);
        if ($high < $low) {
            error_exit("Invalid bit range '$bit_pos_str'. High bit must be >= low bit.");
        }
        my $bit_width = $high - $low + 1;
        # Create mask: (1) Create width-sized mask, (2) Shift to position
        # Example: bits[7:1] → width=7 → (1<<7)-1=0x7F → 0x7F<<1=0xFE
        my $mask = ((1 << $bit_width) - 1) << $low;
        return ('range', $high, $low, $mask, $bit_width);
        
    } elsif ($bit_pos_str =~ /^\d+$/) {
        # Single bit format: "31"
        my $bit = $bit_pos_str;
        my $mask = 1 << $bit;
        return ('single', $bit, $bit, $mask, 1);
        
    } else {
        error_exit("Invalid bit_position format '$bit_pos_str'. Use 'whole', single bit (e.g., 31) or range (e.g., 7:1).");
    }
}

################################################################################
# _executeRegControl - Execute register read/write operations
################################################################################
# Purpose: Perform actual register manipulations based on configuration
# Args: 
#   - control_type: Key from %regControlConfig
#   - action: 'read', 'enable', or 'disable'
# Operations:
#   - read: Display current register value and relevant bits
#   - enable: Write enable_value to specified bits (RMW for bits/ranges)
#   - disable: Write disable_value to specified bits (RMW for bits/ranges)
################################################################################
sub _executeRegControl {
    my ($control_type, $action) = @_;
    
    my $config = $regControlConfig{$control_type};
    
    if ($action eq 'read') {
        # ----------------------------------------------------------------
        # READ: Display register values and decoded bit fields
        # ----------------------------------------------------------------
        print "Reading registers for control type: " . colored("$control_type", "green") . "\n";
            
        foreach my $reg_name (keys %{$config->{'registers'}}) {
            my $reg_data = $config->{'registers'}{$reg_name};
            
            # Check if reg_data is an array reference (multiple configs) or hash reference (single config)
            my @reg_configs;
            if (ref($reg_data) eq 'ARRAY') {
                @reg_configs = @$reg_data;  # Array of configs
            } else {
                @reg_configs = ($reg_data);  # Single config wrapped in array
            }
            
            # Process each configuration
            foreach my $reg_config (@reg_configs) {
                my $group = $reg_config->{'group'};
                # read the register value
                if (defined $reg{$group}{$reg_name}) {
                    my $value = regRdBar($gpu_id, "0", $reg{$group}{$reg_name});
                    print "  $reg_name: 0x$value\n";
                        
                    # read the bit value
                    if (defined $reg_config->{'bit_position'}) {
                        my $bit_pos = $reg_config->{'bit_position'};
                        my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);
                        
                        if ($mode eq 'whole') {
                            print "    Whole register: " . colored(sprintf("0x%x (%d)", hex($value), hex($value)), "magenta") . "\n";
                        } else {
                            # Extract bit field value using two-step process:
                            #   Step 1: Right-shift by low bit to move field to LSB position
                            #   Step 2: Mask with width-sized mask to extract only field bits
                            # 
                            # Example: Extract bits[7:1] from register value 0x12FE
                            #   low = 1, width = 7
                            #   Width mask: (1 << 7) - 1 = 0x7F
                            #   Step 1: 0x12FE >> 1 = 0x097F
                            #   Step 2: 0x097F & 0x7F = 0x007F (field value = 127)
                            my $field_value = (hex($value) >> $low) & ((1 << $width) - 1);
                            
                            if ($mode eq 'range') {
                                print "    Bits [$high:$low]: " . colored(sprintf("0x%x (%d)", $field_value, $field_value), "cyan") . "\n";
                            } else {
                                print "    Bit $high: " . colored("$field_value", $field_value ? "green" : "red") . "\n";
                            }
                        }
                    }
                } else {
                    print "  $reg_name: " . colored("NOT FOUND", "red") . "\n";
                }
            }
        }
    } elsif ($action eq 'enable') {
        # ----------------------------------------------------------------
        # ENABLE: Write enable_value with appropriate strategy
        # Strategy:
        #   - 'whole': Direct write (overwrite all 32 bits)
        #   - 'single'/'range': RMW (preserve other bits)
        # ----------------------------------------------------------------
        print "Enabling control type: " . colored("$control_type", "green") . "\n";
        
        foreach my $reg_name (keys %{$config->{'registers'}}) {
            my $reg_data = $config->{'registers'}{$reg_name};
            
            # Check if reg_data is an array reference (multiple configs) or hash reference (single config)
            my @reg_configs;
            if (ref($reg_data) eq 'ARRAY') {
                @reg_configs = @$reg_data;  # Array of configs
            } else {
                @reg_configs = ($reg_data);  # Single config wrapped in array
            }
            
            # Process each configuration
            foreach my $reg_config (@reg_configs) {
                my $group = $reg_config->{'group'};
                
                if (defined $reg{$group}{$reg_name}) {
                    # Read current value (needed for RMW or display)
                    my $current_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
                    my $bit_pos = $reg_config->{'bit_position'};
                    my $enable_value = $reg_config->{'enable_value'};
                    
                    my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);
                    
                    # Calculate new value based on mode
                    my $new_value;
                    if ($mode eq 'whole') {
                        # Whole register: Direct write (no RMW)
                        $new_value = $enable_value;
                    } else {
                        # Bit/Range: RMW (Read-Modify-Write) to preserve other bits
                        # 
                        # RMW Algorithm - 3 Steps:
                        #   1. READ:   Start with current register value
                        #   2. MODIFY: Clear target bits using inverted mask
                        #   3. WRITE:  Set new value in target bits using mask
                        #
                        # Example: Set bits[7:1]=0x7F in register containing 0x1234
                        #   mask = 0xFE (bits 7:1), low = 1
                        #   Step 1 (Read):   new_value = 0x1234
                        #   Step 2 (Modify): new_value = 0x1234 & ~0xFE = 0x1234 & 0xFFFFFF01 = 0x1200
                        #   Step 3 (Write):  new_value = 0x1200 | ((0x7F << 1) & 0xFE) = 0x1200 | 0xFE = 0x12FE
                        $new_value = $current_value;                   # Step 1: Read current value
                        $new_value &= ~$mask;                          # Step 2: Clear target bits
                        $new_value |= ($enable_value << $low) & $mask; # Step 3: Set new value in target bits
                    }
                    
                    # convert to hexadecimal string and write
                    my $hex_value = sprintf("%x", $new_value);
                    regWrBar($gpu_id, 0, $reg{$group}{$reg_name}, $hex_value);
                    
                    # Small delay to allow register write to propagate (if needed)
                    # Some registers may need a brief delay before readback is valid
                    usleep(1000);  # 1ms delay
                    
                    # Read back to verify the write
                    my $readback_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
                    
                    if ($mode eq 'whole') {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Whole register set to 0x" . sprintf("%x", $enable_value) . ")\n";
                    } elsif ($mode eq 'range') {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Bits [$high:$low] set to 0x" . sprintf("%x", $enable_value) . ")\n";
                    } else {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Bit $high set to $enable_value)\n";
                    }
                    
                    # Verify write operation
                    # Special handling: if both read values are 0x0, it might indicate register access failure
                    if ($readback_value != $new_value) {
                        if ($current_value == 0 && $readback_value == 0 && $new_value != 0) {
                            # Both reads returned 0, likely register access issue
                            print "    " . colored("[WARN]", "yellow") . " Write verification failed (register may not be accessible). Expected: 0x" . sprintf("%x", $new_value) . ", Got: 0x" . sprintf("%x", $readback_value) . "\n";
                            print "    " . colored("[INFO]", "cyan") . " This may indicate register access issues or hardware limitations.\n";
                        } else {
                            print "    " . colored("[ERROR]", "red") . " Write verification failed! Expected: 0x" . sprintf("%x", $new_value) . ", Got: 0x" . sprintf("%x", $readback_value) . "\n";
                        }
                    } else {
                        print "    " . colored("[OK]", "green") . " Write verified successfully\n";
                    }
                } else {
                    print "  $reg_name: " . colored("NOT FOUND", "red") . "\n";
                }
            }
        }
    } elsif ($action eq 'disable') {
        # ----------------------------------------------------------------
        # DISABLE: Write disable_value with appropriate strategy
        # Strategy: Same as enable, but uses disable_value instead
        # ----------------------------------------------------------------
        print "Disabling control type: " . colored("$control_type", "green") . "\n";
        
        foreach my $reg_name (keys %{$config->{'registers'}}) {
            my $reg_data = $config->{'registers'}{$reg_name};
            
            # Check if reg_data is an array reference (multiple configs) or hash reference (single config)
            my @reg_configs;
            if (ref($reg_data) eq 'ARRAY') {
                @reg_configs = @$reg_data;  # Array of configs
            } else {
                @reg_configs = ($reg_data);  # Single config wrapped in array
            }
            
            # Process each configuration
            foreach my $reg_config (@reg_configs) {
                my $group = $reg_config->{'group'};
                
                if (defined $reg{$group}{$reg_name}) {
                    # Read current value (needed for RMW or display)
                    my $current_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
                    my $bit_pos = $reg_config->{'bit_position'};
                    my $disable_value = $reg_config->{'disable_value'};
                    
                    my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);
                    
                    # Calculate new value based on mode
                    my $new_value;
                    if ($mode eq 'whole') {
                        # Whole register: Direct write (no RMW)
                        $new_value = $disable_value;
                    } else {
                        # Bit/Range: RMW to preserve other bits
                        $new_value = $current_value;
                        $new_value &= ~$mask;                            # Clear target bits
                        $new_value |= ($disable_value << $low) & $mask;  # Set new value
                    }
                    
                    # convert to hexadecimal string and write
                    my $hex_value = sprintf("%x", $new_value);
                    regWrBar($gpu_id, 0, $reg{$group}{$reg_name}, $hex_value);
                    
                    # Small delay to allow register write to propagate (if needed)
                    # Some registers may need a brief delay before readback is valid
                    usleep(1000);  # 1ms delay
                    
                    # Read back to verify the write
                    my $readback_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
                    
                    if ($mode eq 'whole') {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Whole register set to 0x" . sprintf("%x", $disable_value) . ")\n";
                    } elsif ($mode eq 'range') {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Bits [$high:$low] set to 0x" . sprintf("%x", $disable_value) . ")\n";
                    } else {
                        print "  $reg_name: 0x" . sprintf("%x", $current_value) . " -> 0x$hex_value (Bit $high set to $disable_value)\n";
                    }
                    
                    # Verify write operation
                    # Special handling: if both read values are 0x0, it might indicate register access failure
                    if ($readback_value != $new_value) {
                        if ($current_value == 0 && $readback_value == 0 && $new_value != 0) {
                            # Both reads returned 0, likely register access issue
                            print "    " . colored("[WARN]", "yellow") . " Write verification failed (register may not be accessible). Expected: 0x" . sprintf("%x", $new_value) . ", Got: 0x" . sprintf("%x", $readback_value) . "\n";
                            print "    " . colored("[INFO]", "cyan") . " This may indicate register access issues or hardware limitations.\n";
                        } else {
                            print "    " . colored("[ERROR]", "red") . " Write verification failed! Expected: 0x" . sprintf("%x", $new_value) . ", Got: 0x" . sprintf("%x", $readback_value) . "\n";
                        }
                    } else {
                        print "    " . colored("[OK]", "green") . " Write verified successfully\n";
                    }
                } else {
                    print "  $reg_name: " . colored("NOT FOUND", "red") . "\n";
                }
            }
        }
    } else {
        error_exit("Unknown action '$action'\nAvailable actions: enable, disable, read", 'error');
    }
}

################################################################################
#                   DIRECT REGISTER ACCESS FUNCTIONS
################################################################################

################################################################################
# regDirect - Direct register access by absolute address
################################################################################
# Purpose: Read/Write arbitrary register addresses with flexible bit control
# Args: 
#   - address: Absolute register address (hex with or without 0x prefix)
#   - action: 'read' or 'write'
#   - bit_position (write only): 'whole', single bit (e.g., '31'), or range (e.g., '7:1')
#   - value (write only): Value to write (decimal or hex with 0x prefix)
#
# Usage Examples:
#   Read:
#     regDirect('0x8c080', 'read')
#     regDirect('8c080', 'read')
#
#   Write whole register:
#     regDirect('0x8c080', 'write', 'whole', '0x12345678')
#     regDirect('8c080', 'write', 'whole', '305419896')
#
#   Write single bit:
#     regDirect('0x8c080', 'write', '31', '1')
#
#   Write bit range:
#     regDirect('0x8c080', 'write', '7:1', '0x7F')
################################################################################
sub regDirect {
    my @args = @_;
    
    # Validate minimum arguments
    unless (@args >= 2) {
        my $msg = "Insufficient arguments\n" .
                  "Usage:\n" .
                  "  Read:  regDirect <address> read\n" .
                  "  Write: regDirect <address> write <bit_position> <value>\n\n" .
                  "Examples:\n" .
                  "  perl lpe.pl --Feature regDirect --args 0x8c080 read\n" .
                  "  perl lpe.pl --Feature regDirect --args 0x8c080 write whole 0x12345678\n" .
                  "  perl lpe.pl --Feature regDirect --args 0x8c080 write 31 1\n" .
                  "  perl lpe.pl --Feature regDirect --args 0x8c080 write 7:1 0x7F";
        error_exit($msg, 'error');
        return;
    }
    
    my ($address, $action, $bit_position, $value) = @args;
    
    # Normalize address: remove 0x prefix if present, ensure lowercase hex
    $address =~ s/^0x//i;
    $address = lc($address);
    
    # Validate address format (hex digits only)
    unless ($address =~ /^[0-9a-f]+$/) {
        error_exit("Invalid address format '$address'. Use hex format (e.g., 8c080 or 0x8c080)", 'error');
        return;
    }
    
    if ($action eq 'read') {
        # ----------------------------------------------------------------
        # READ: Display register value and decoded bit fields
        # ----------------------------------------------------------------
        print "Reading register at address: " . colored("0x$address", "green") . "\n";
        
        my $reg_value = regRdBar($gpu_id, "0", $address);
        print "  Full register value: " . colored("$reg_value", "cyan") . " (" . hex($reg_value) . " decimal)\n";
        
        # Display binary representation
        my $binary = sprintf("%032b", hex($reg_value));
        print "  Binary: $binary\n";
        
        # Display bit-by-bit breakdown (grouped by 8)
        print "  Bits [31:24]: 0x" . sprintf("%02X", (hex($reg_value) >> 24) & 0xFF) . "\n";
        print "  Bits [23:16]: 0x" . sprintf("%02X", (hex($reg_value) >> 16) & 0xFF) . "\n";
        print "  Bits [15:8]:  0x" . sprintf("%02X", (hex($reg_value) >> 8) & 0xFF) . "\n";
        print "  Bits [7:0]:   0x" . sprintf("%02X", hex($reg_value) & 0xFF) . "\n";
    } elsif ($action eq 'write') {
        # ----------------------------------------------------------------
        # WRITE: Write value with appropriate strategy
        # ----------------------------------------------------------------
        # Validate write parameters
        unless (defined $bit_position && defined $value) {
            my $msg = "Write operation requires bit_position and value\n" .
                      "Usage: regDirect <address> write <bit_position> <value>\n" .
                      "  bit_position: 'whole', single bit (e.g., 31), or range (e.g., 7:1)\n" .
                      "  value: decimal or hex (with 0x prefix)";
            error_exit($msg, 'error');
            return;
        }
        
        # Parse value (support both hex and decimal)
        my $write_value;
        if ($value =~ /^0x/i) {
            $write_value = hex($value);
        } elsif ($value =~ /^\d+$/) {
            $write_value = $value;
        } else {
            error_exit("Invalid value format '$value'. Use decimal or hex (0x prefix)", 'error');
            return;
        }
        
        print "Writing to register at address: " . colored("0x$address", "green") . "\n";
        
        # Parse bit position
        my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_position);
        
        # Read current value
        my $current_value = hex(regRdBar($gpu_id, "0", $address));
        
        # Calculate new value based on mode
        my $new_value;
        if ($mode eq 'whole') {
            # Whole register: Direct write
            $new_value = $write_value;
            
            # Validate 32-bit range
            if ($new_value > 0xFFFFFFFF) {
                print colored("[WARNING]", "yellow") . " Value 0x" . sprintf("%X", $new_value) . " exceeds 32-bit range, truncating\n";
                $new_value &= 0xFFFFFFFF;
            }
            
        } else {
            # Bit/Range: RMW (Read-Modify-Write)
            
            # Validate value fits in bit width
            my $max_value = (1 << $width) - 1;
            if ($write_value > $max_value) {
                my $msg = sprintf("Value %d (0x%X) exceeds maximum for %d bit(s): %d (0x%X)",
                                 $write_value, $write_value, $width, $max_value, $max_value);
                error_exit($msg, 'error');
                return;
            }
            
            $new_value = $current_value;                        # Step 1: Read
            $new_value &= ~$mask;                               # Step 2: Clear target bits
            $new_value |= ($write_value << $low) & $mask;       # Step 3: Set new value
        }
        
        # Write to register
        my $hex_value = sprintf("%x", $new_value);
        regWrBar($gpu_id, 0, $address, $hex_value);
        
        # Display write operation details
        print "  Operation: ";
        if ($mode eq 'whole') {
            print colored("Whole register", "magenta") . "\n";
        } elsif ($mode eq 'range') {
            print colored("Bits [$high:$low]", "magenta") . "\n";
        } else {
            print colored("Bit $high", "magenta") . "\n";
        }
        
        print "  Write value: " . colored("0x" . sprintf("%X", $write_value) . " ($write_value decimal)", "yellow") . "\n";
        print "  Before:      0x" . sprintf("%08X", $current_value) . " (" . sprintf("%032b", $current_value) . ")\n";
        print "  After:       0x" . colored(sprintf("%08X", $new_value), "green") . " (" . colored(sprintf("%032b", $new_value), "green") . ")\n";
        
        # Verify write
        my $verify_value = hex(regRdBar($gpu_id, "0", $address));
        if ($verify_value == $new_value) {
            print "  " . colored("[VERIFIED]", "green") . " Write successful\n";
        } else {
            print "  " . colored("[WARNING]", "yellow") . " Verification mismatch! Read back: 0x" . sprintf("%08X", $verify_value) . "\n";
        }
    } else {
        error_exit("Unknown action '$action'\nAvailable actions: read, write", 'error');
    }
}

################################################################################
#                   REGISTER THRESHOLD CONTROL FUNCTIONS
################################################################################

################################################################################
# regThreshold - Register threshold configuration control
################################################################################
# Purpose: Read/Write/List register threshold configurations
# Args:
#   - threshold_name: Key from %regThresholdConfig (or 'list')
#   - action: 'read', 'write', or 'list'
#   - values (write only): MANT BEFORE AFTER (3 values)
#
# Usage Examples:
#   Read threshold:
#     regThreshold('THRESHOLD_GR', 'read')
#
#   Write threshold:
#     regThreshold('THRESHOLD_GR', 'write', '5', '10', '8')
#
#   List all thresholds:
#     regThreshold('list')
################################################################################
sub regThreshold {
    my @args = @_;

    # Handle special 'list' command
    if (@args >= 1 && $args[0] eq 'list') {
        _listAllThresholds();
        return;
    }

    # Validate minimum arguments for read/write
    unless (@args >= 2) {
        my $msg = "Insufficient arguments\n" .
                  "Usage:\n" .
                  "  Single Read:  regThreshold <threshold_name> read\n" .
                  "  Batch Read:   regThreshold read <name1> <name2> <name3> ...\n" .
                  "  Batch Read:   regThreshold <name1> read <name2> read <name3> read ...\n" .
                  "  Write (3):    regThreshold <threshold_name> write <MANT> <BEFORE> <AFTER>\n" .
                  "  Write (4):    regThreshold <threshold_name> write <EXP> <MANT> <BEFORE> <AFTER>\n" .
                  "  List:         regThreshold list\n\n" .
                  "Examples:\n" .
                  "  perl lpe.pl --Feature regThreshold --args ELCG_GR read\n" .
                  "  perl lpe.pl --Feature regThreshold --args read ELCG_GR ELCG_NVDEC_0 ELCG_COPY_0\n" .
                  "  perl lpe.pl --Feature regThreshold --args ELCG_GR read ELCG_NVDEC_0 read\n" .
                  "  perl lpe.pl --Feature regThreshold --args ELCG_GR write 5 10 8\n" .
                  "  perl lpe.pl --Feature regThreshold --args ELCG_GR write 7 5 10 8\n" .
                  "  perl lpe.pl --Feature regThreshold --args ELCG_NVDEC_ALL write 5 10 8\n" .
                  "  perl lpe.pl --Feature regThreshold --args list";
        error_exit($msg, 'error');
        return;
    }

    # Check for batch read mode: "read name1 name2 name3 ..."
    # Any name ending in _ALL expands to its family (e.g. ELCG_NVDEC_ALL)
    if ($args[0] eq 'read' && @args >= 2) {
        shift @args;  # Remove 'read' from arguments
        my @expanded = _expandThresholdNames(@args);
        foreach my $threshold_name (@expanded) {
            _readSingleThreshold($threshold_name);
        }
        return;
    }

    # Check for paired read mode: "name1 read name2 read ..."
    # All odd positions should be threshold names, all even positions should be 'read'
    my $is_paired_read = 1;
    if (@args >= 2 && @args % 2 == 0) {
        for (my $i = 1; $i < @args; $i += 2) {
            if ($args[$i] ne 'read') {
                $is_paired_read = 0;
                last;
            }
        }
        if ($is_paired_read) {
            # Collect names at even positions, expand any _ALL aliases, then read
            my @names;
            for (my $i = 0; $i < @args; $i += 2) {
                push @names, $args[$i];
            }
            foreach my $threshold_name (_expandThresholdNames(@names)) {
                _readSingleThreshold($threshold_name);
            }
            return;
        }
    }

    # Single operation mode (read or write)
    my ($threshold_name, $action, @values) = @args;

    # Expand _ALL family aliases (e.g. ELCG_NVDEC_ALL) into concrete engine names.
    # A non-aliased name passes through unchanged.
    my @target_names = _expandThresholdNames($threshold_name);

    # Verify all resolved names exist in configuration
    foreach my $name (@target_names) {
        unless (exists $regThresholdConfig{$name}) {
            my $msg = "Unknown threshold name '$name'" .
                      ($name ne $threshold_name ? " (expanded from '$threshold_name')" : "") . "\n" .
                      "Available threshold types: " . join(", ", sort keys %regThresholdConfig);
            error_exit($msg, 'error');
            return;
        }
    }

    # Announce expansion when alias produced multiple targets
    if (@target_names > 1) {
        print colored(sprintf("Expanding '%s' to %d engines: %s\n",
                              $threshold_name, scalar(@target_names),
                              join(", ", @target_names)), "bold yellow");
    }

    if ($action eq 'read') {
        # ----------------------------------------------------------------
        # READ: Display threshold field values (looped if _ALL expanded)
        # ----------------------------------------------------------------
        foreach my $name (@target_names) {
            _readSingleThreshold($name);
        }
    } elsif ($action eq 'write') {
        # ----------------------------------------------------------------
        # WRITE: Modify threshold field values (looped if _ALL expanded)
        # ----------------------------------------------------------------
        # Validate write parameters: 3 values (MANT BEFORE AFTER) or 4 values (EXP MANT BEFORE AFTER)
        unless (@values == 3 || @values == 4) {
            my $msg = "Write operation requires 3 or 4 values\n" .
                      "Usage (3 values): regThreshold <threshold_name> write <MANT> <BEFORE> <AFTER>\n" .
                      "Usage (4 values): regThreshold <threshold_name> write <EXP> <MANT> <BEFORE> <AFTER>\n" .
                      "Example: regThreshold GR write 5 10 8\n" .
                      "Example: regThreshold GR write 7 5 10 8";
            error_exit($msg, 'error');
            return;
        }

        my ($exp_val, $mant_val, $before_val, $after_val);
        if (@values == 4) {
            ($exp_val, $mant_val, $before_val, $after_val) = @values;
        } else {
            ($mant_val, $before_val, $after_val) = @values;
        }

        # Parse values (support both hex and decimal)
        my $exp    = defined($exp_val)
                     ? (($exp_val =~ /^0x/i) ? hex($exp_val) : $exp_val)
                     : undef;
        my $mant   = ($mant_val   =~ /^0x/i) ? hex($mant_val)   : $mant_val;
        my $before = ($before_val =~ /^0x/i) ? hex($before_val) : $before_val;
        my $after  = ($after_val  =~ /^0x/i) ? hex($after_val)  : $after_val;

        my $total          = scalar(@target_names);
        my $idx            = 0;
        my $verified_count = 0;
        my $failed_count   = 0;
        my @failed_engines;

        foreach my $current_name (@target_names) {
            $idx++;
            my $config = $regThresholdConfig{$current_name};

            print_table_separator(TABLE_WIDTH_MEDIUM);
            if ($total > 1) {
                print colored("[$idx/$total] Writing Threshold Configuration: $current_name", "bold cyan") . "\n";
            } else {
                print colored("Writing Threshold Configuration: $current_name", "bold cyan") . "\n";
            }
            print_table_separator(TABLE_WIDTH_MEDIUM);
            print "Description: $config->{'description'}\n";
            print "Register: $config->{'register'}\n";
            print_table_separator(TABLE_WIDTH_MEDIUM, '-');

            my $reg_name = $config->{'register'};
            my $group = $config->{'group'};

            # Check if register address is defined
            unless (defined $reg{$group}{$reg_name}) {
                print colored("[ERROR]", "red") . " Register '$reg_name' not found\n";
                $failed_count++;
                push @failed_engines, $current_name;
                next;
            }

            # Read current register value
            my $current_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
            print "Current register value: " . sprintf("0x%08X", $current_value) . "\n\n";

            # Prepare new value by modifying each field
            my $new_value = $current_value;
            my %field_values = (
                'ENG_IDLE_FILT_MANT' => $mant,
                'ENG_DELAY_BEFORE'   => $before,
                'ENG_DELAY_AFTER'    => $after,
            );
            $field_values{'ENG_IDLE_FILT_EXP'} = $exp if defined $exp;

            printf "%-27s %-15s %-30s %-30s\n", "Field Name", "Bit Position", "Old Value", "New Value";
            print_table_separator(TABLE_WIDTH_MEDIUM, '-');

            foreach my $field_name (sort { my ($la) = $config->{'fields'}{$a}{'bit_position'} =~ /:(\d+)$/;
               my ($lb) = $config->{'fields'}{$b}{'bit_position'} =~ /:(\d+)$/;
               $la <=> $lb } keys %{$config->{'fields'}}) {
                my $field_config = $config->{'fields'}{$field_name};
                my $bit_pos = $field_config->{'bit_position'};

                # Skip fields not in the write set (EXP omitted in 3-value mode)
                next unless exists $field_values{$field_name};

                my $write_value = $field_values{$field_name};

                # Parse bit position
                my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);

                # Validate value fits in bit width
                my $max_value = (1 << $width) - 1;
                if ($write_value > $max_value) {
                    error_exit("Value $write_value for field '$field_name' exceeds maximum $max_value for $width bits", 'error');
                    return;
                }

                # Extract old field value
                my $old_field_value = ($current_value >> $low) & ((1 << $width) - 1);

                # Modify register value (RMW)
                $new_value &= ~$mask;                       # Clear field bits
                $new_value |= ($write_value << $low) & $mask;  # Set new value

                # Calculate time values: (2^DELAY)/CLOCK_FREQUENCY_MHZ (us)
                my $old_time_us = (2 ** $old_field_value) / CLOCK_FREQUENCY_MHZ;
                my $new_time_us = (2 ** $write_value) / CLOCK_FREQUENCY_MHZ;
                my $old_value_str = sprintf("0x%X (%d) = %.3f us", $old_field_value, $old_field_value, $old_time_us);
                my $new_value_str = sprintf("0x%X (%d) = %.3f us", $write_value, $write_value, $new_time_us);

                printf "%-27s %-15s %-30s %-30s\n",
                    colored($field_name, "green"),
                    "[$high:$low]",
                    $old_value_str,
                    colored($new_value_str, "cyan");
            }

            print "\n";
            print "Register update: " . sprintf("0x%08X", $current_value) . " -> " .
                  colored(sprintf("0x%08X", $new_value), "green") . "\n";

            # Write to register
            my $hex_value = sprintf("%x", $new_value);
            regWrBar($gpu_id, 0, $reg{$group}{$reg_name}, $hex_value);

            # Small delay to allow register write to propagate (if needed)
            usleep(1000);  # 1ms delay

            # Verify write
            my $verify_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
            if ($verify_value == $new_value) {
                print colored("[VERIFIED]", "green") . " Write operation successful\n";
                $verified_count++;
            } else {
                if ($current_value == 0 && $verify_value == 0 && $new_value != 0) {
                    print colored("[WARN]", "yellow") . " Write verification failed (register may not be accessible). Expected: " . sprintf("0x%08X", $new_value) . ", Got: " . sprintf("0x%08X", $verify_value) . "\n";
                    print colored("[INFO]", "cyan") . " This may indicate register access issues or hardware limitations.\n";
                } else {
                    print colored("[WARNING]", "yellow") . " Verification mismatch! Expected: " . sprintf("0x%08X", $new_value) . ", Read back: " . sprintf("0x%08X", $verify_value) . "\n";
                }
                $failed_count++;
                push @failed_engines, $current_name;
            }
            print_table_separator(TABLE_WIDTH_MEDIUM);
            print "\n";
        }

        # Batch summary only when alias expanded to multiple engines
        if ($total > 1) {
            print_table_separator(TABLE_WIDTH_MEDIUM);
            print colored(sprintf("Batch write summary for alias '%s' (%d engine(s) processed):\n",
                                  $threshold_name, $total), "bold cyan");
            print_table_separator(TABLE_WIDTH_MEDIUM, '-');
            printf "  %s  %d/%d\n",
                colored("[VERIFIED]", "green"),
                $verified_count, $total;
            if ($failed_count > 0) {
                printf "  %s    %d/%d  -> %s\n",
                    colored("[FAILED]", "red"),
                    $failed_count, $total,
                    colored(join(", ", @failed_engines), "red");
            } else {
                printf "  %s    %d/%d\n",
                    colored("[FAILED]", "red"),
                    $failed_count, $total;
            }
            print_table_separator(TABLE_WIDTH_MEDIUM);
        }
    } else {
        error_exit("Unknown action '$action'\nAvailable actions: read, write, list", 'error');
    }
}

################################################################################
# _expandThresholdNames - Expand _ALL family aliases into concrete engine names
################################################################################
# Purpose: Translate convenience aliases like 'ELCG_NVDEC_ALL' into the list of
#          indexed engines available in %regThresholdConfig.
#          A name without a recognized _ALL family is passed through unchanged
#          so downstream validation can report it as unknown.
# Args:    @names - list of threshold names (may include _ALL aliases)
# Returns: Expanded list of concrete threshold names, in numeric index order
# Examples:
#   ELCG_NVDEC_ALL -> ELCG_NVDEC_0, ELCG_NVDEC_1, ..., ELCG_NVDEC_7
#   ELCG_COPY_ALL  -> ELCG_COPY_0,  ELCG_COPY_1,  ..., ELCG_COPY_19
#   ELCG_OFA_ALL   -> ELCG_OFA_0,   ELCG_OFA_1
# Note: This helper does NOT split comma-separated tokens. Multiple names must
#       be passed as separate argv elements (space-separated on the command line).
################################################################################
sub _expandThresholdNames {
    my @input = @_;
    my @output;

    foreach my $name (@input) {
        if ($name =~ /^(.+)_ALL$/) {
            my $prefix = $1;
            # Collect threshold names matching "<prefix>_<digits>"
            my @matches = grep { /^\Q$prefix\E_\d+$/ } keys %regThresholdConfig;

            if (@matches) {
                # Sort by numeric index so output is deterministic
                @matches = sort {
                    my ($na) = $a =~ /_(\d+)$/;
                    my ($nb) = $b =~ /_(\d+)$/;
                    $na <=> $nb;
                } @matches;
                push @output, @matches;
            } else {
                # No expansion possible; keep original so validation flags it
                push @output, $name;
            }
        } else {
            push @output, $name;
        }
    }
    return @output;
}

################################################################################
# _readSingleThreshold - Read and display a single threshold configuration
################################################################################
# Purpose: Read threshold values for a single engine
# Args: $threshold_name - Name of the threshold configuration
################################################################################
sub _readSingleThreshold {
    my ($threshold_name) = @_;
    
    # Verify threshold name exists in configuration
    unless (exists $regThresholdConfig{$threshold_name}) {
        my $msg = "Unknown threshold name '$threshold_name'\n" .
                  "Available threshold types: " . join(", ", sort keys %regThresholdConfig);
        error_exit($msg, 'error');
        return;
    }
    
    my $config = $regThresholdConfig{$threshold_name};
    
    print_table_separator(TABLE_WIDTH_NARROW);
    print colored("Reading Threshold Configuration: $threshold_name", "bold cyan") . "\n";
    print_table_separator(TABLE_WIDTH_NARROW);
    print "Description: $config->{'description'}\n";
    print "Register: $config->{'register'}\n";
    print_table_separator(TABLE_WIDTH_NARROW, '-');
    
    my $reg_name = $config->{'register'};
    my $group = $config->{'group'};
    
    # Check if register address is defined
    unless (defined $reg{$group}{$reg_name}) {
        print colored("[ERROR]", "red") . " Register '$reg_name' not found\n";
        return;
    }
    
    # Read register value
    my $reg_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));
    print "Full register value: " . colored(sprintf("0x%08X", $reg_value), "yellow") . "\n\n";
    
    # Display threshold fields
    printf "%-27s %-15s %-30s %s\n", "Field Name", "Bit Position", "Current Value", "Description";
    print_table_separator(TABLE_WIDTH_NARROW, '-');

    foreach my $field_name (sort { my ($la) = $config->{'fields'}{$a}{'bit_position'} =~ /:(\d+)$/;
               my ($lb) = $config->{'fields'}{$b}{'bit_position'} =~ /:(\d+)$/;
               $la <=> $lb } keys %{$config->{'fields'}}) {
        my $field_config = $config->{'fields'}{$field_name};
        my $bit_pos = $field_config->{'bit_position'};
        my $description = $field_config->{'description'};

        # Parse bit position and extract field value
        my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);
        my $field_value = ($reg_value >> $low) & ((1 << $width) - 1);

        # Calculate time value: (2^DELAY)/CLOCK_FREQUENCY_MHZ (us)
        my $time_us = (2 ** $field_value) / CLOCK_FREQUENCY_MHZ;
        my $value_str = sprintf("0x%X (%d) = %.3f us", $field_value, $field_value, $time_us);

        printf "%-27s %-15s %-30s %s\n",
            colored($field_name, "green"),
            "[$high:$low]",
            colored($value_str, "cyan"),
            $description;
    }
    print_table_separator(TABLE_WIDTH_NARROW);
    print "\n";
}

################################################################################
# _listAllThresholds - Display all threshold configurations in table format
################################################################################
# Purpose: Print a formatted table of all threshold configurations
################################################################################
sub _listAllThresholds {
    print "\n";
    print_table_separator(TABLE_WIDTH_WIDE);
    print colored("All Threshold Configurations", "bold cyan") . "\n";
    print_table_separator(TABLE_WIDTH_WIDE);
    print colored("Chip type: $chip", "yellow") . "\n";
    print_table_separator(TABLE_WIDTH_WIDE);
    
    # Table header
    printf "%-20s %-25s %-25s %-15s %-15s %-20s %-20s\n",
        "Threshold Name", "Register", "Description", "EXP (us)", "MANT (us)", "BEFORE (us)", "AFTER (us)";
    print_table_separator(TABLE_WIDTH_WIDE, '-');

    # Iterate through all threshold configurations
    foreach my $threshold_name (sort keys %regThresholdConfig) {
        my $config = $regThresholdConfig{$threshold_name};
        my $reg_name = $config->{'register'};
        my $group = $config->{'group'};
        my $description = $config->{'description'};

        # Try to read current values
        my ($exp_val, $mant_val, $before_val, $after_val) = ('-', '-', '-', '-');

        if (defined $reg{$group}{$reg_name}) {
            my $reg_value = hex(regRdBar($gpu_id, "0", $reg{$group}{$reg_name}));

            # Extract each field value
            foreach my $field_name (sort { my ($la) = $config->{'fields'}{$a}{'bit_position'} =~ /:(\d+)$/;
                                           my ($lb) = $config->{'fields'}{$b}{'bit_position'} =~ /:(\d+)$/;
                                           $la <=> $lb } keys %{$config->{'fields'}}) {
                my $field_config = $config->{'fields'}{$field_name};
                my $bit_pos = $field_config->{'bit_position'};
                my ($mode, $high, $low, $mask, $width) = _parseBitPosition($bit_pos);
                my $field_value = ($reg_value >> $low) & ((1 << $width) - 1);

                # Calculate time value: (2^DELAY)/CLOCK_FREQUENCY_MHZ (us)
                my $time_us = (2 ** $field_value) / CLOCK_FREQUENCY_MHZ;
                my $display_val = sprintf("%d=%.3fus", $field_value, $time_us);

                if ($field_name eq 'ENG_IDLE_FILT_EXP') {
                    $exp_val = $display_val;
                } elsif ($field_name eq 'ENG_IDLE_FILT_MANT') {
                    $mant_val = $display_val;
                } elsif ($field_name eq 'ENG_DELAY_BEFORE') {
                    $before_val = $display_val;
                } elsif ($field_name eq 'ENG_DELAY_AFTER') {
                    $after_val = $display_val;
                }
            }
        }

        # Print row
        printf "%-20s %-25s %-25s %-15s %-15s %-20s %-20s\n",
            colored($threshold_name, "green"),
            $reg_name,
            $description,
            colored($exp_val, "cyan"),
            colored($mant_val, "cyan"),
            colored($before_val, "cyan"),
            colored($after_val, "cyan");
    }
    
    print_table_separator(TABLE_WIDTH_WIDE);
    print "Total " . colored(scalar(keys %regThresholdConfig), "yellow") . " threshold configurations\n";
    print_table_separator(TABLE_WIDTH_WIDE);
    print "\n";
}
