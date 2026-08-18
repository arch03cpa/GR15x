================================================================================
                     GR10x / GR15x Command Reference
================================================================================

--------------------------------------------------------------------------------
Register Operations
--------------------------------------------------------------------------------

Read All Registers from JSON
  Read all register values defined in the registers.json file

  perl lpe.pl --chip gr10x --Feature regTestFromJson --args dump


Direct Register Access
  Manipulate registers directly using absolute addresses without predefined
  configuration

  Read Register
    perl lpe.pl --Feature regDirect --args <address> read

  Write Entire Register
    perl lpe.pl --Feature regDirect --args <address> write whole <value>

  Write Single Bit
    perl lpe.pl --Feature regDirect --args <address> write <bit> <value>

  Write Bit Range
    perl lpe.pl --Feature regDirect --args <address> write 7:1 <value>

  Value Format
    Decimal      305419896
    Hexadecimal  0x12345678

  Address Format
    Must be a valid hexadecimal address
    Example: 0x8c080 or 8c080

  Note: Hardware access is required


--------------------------------------------------------------------------------
Engine Residency Measurement
--------------------------------------------------------------------------------

Graphics Engine
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_GR -t 1000

Video Decoder (NVDEC)
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC1 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC2 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC3 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC5 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC6 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC7 -t 1000

JPEG Decoder (NVJPG)
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG0 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG1 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG2 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG3 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG4 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG5 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG6 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVJPG7 -t 1000

Security Engine
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_SEC -t 1000

Copy Engines (CE0-CE19)
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE0 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE1 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE2 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE3 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE4 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE5 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE6 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE7 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE8 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE9 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE10 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE11 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE12 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE13 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE14 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE15 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE16 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE17 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE18 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_CE19 -t 1000

Optical Flow Accelerator (OFA)
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_OFA0 -t 1000
  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_OFA1 -t 1000

Root Gating
  perl lpe.pl --chip gr10x --Feature engResidency --args ROOT_GATE_NVDCLK -t 1000


Multi-Engine Measurement
  Measure multiple engines simultaneously

  perl lpe.pl --chip gr10x --Feature engResidency --args ELCG_NVDEC1 ELCG_NVJPG0 ELCG_GR -t 1000


--------------------------------------------------------------------------------
Register Control
--------------------------------------------------------------------------------

Override GPU BDF Address
  Override the default GPU BDF address (09:00.0) to target a specific GPU

  perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regControl --args NVDCLK_SD enable

NVDCLK Slow down Control
  perl lpe.pl --chip gr10x --Feature regControl --args NVDCLK_SD enable
  perl lpe.pl --chip gr10x --Feature regControl --args NVDCLK_SD disable
  perl lpe.pl --chip gr10x --Feature regControl --args NVDCLK_SD read

NVDCLK Slow down Status (Read Only)
  perl lpe.pl --chip gr10x --Feature regControl --args NVDCLK_SD_STATUS read

PCIe Block-Level Clock Gating
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_BLCG enable
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_BLCG disable
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_BLCG read

PCIe Second-Level Clock Gating
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_SLCG enable
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_SLCG disable
  perl lpe.pl --chip gr10x --Feature regControl --args PCIE_SLCG read

Graphics Engine Clock Gating
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_GR enable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_GR disable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_GR read

Optical Flow Accelerator Clock Gating
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_0 enable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_0 disable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_0 read

  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_1 enable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_1 disable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_OFA_1 read

Copy Engine Clock Gating (COPY 0-19)
  Note: All COPY engines support read, enable, and disable operations
  Example for ELCG_COPY_0:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_0 read
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_0 disable
  
  Enable commands for all COPY engines:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_1 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_2 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_3 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_4 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_5 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_6 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_7 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_8 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_9 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_10 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_11 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_12 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_13 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_14 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_15 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_16 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_17 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_18 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_COPY_19 enable

Video Decoder Clock Gating (NVDEC 0-7)
  Note: All NVDEC engines support read, enable, and disable operations
  Example for ELCG_NVDEC_0:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_0 read
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_0 disable
  
  Enable commands for all NVDEC engines:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_1 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_2 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_3 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_4 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_5 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_6 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_7 enable

JPEG Decoder Clock Gating (NVJPG 0-7)
  Note: All NVJPG engines support read, enable, and disable operations
  Example for ELCG_NVJPG_0:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_0 read
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_0 disable
  
  Enable commands for all NVJPG engines:
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_0 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_1 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_2 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_3 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_4 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_5 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_6 enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVJPG_7 enable

All Engines Clock Gating (Single Die)
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL enable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL disable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL read

All Engines Clock Gating (Dual Die)
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL_dual enable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL_dual disable
  perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL_dual read

NVLink Block-Level Clock Gating (Link 0)
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_0 enable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_0 disable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_0 read

NVLink Second-Level Clock Gating (Link 0)
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_0 enable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_0 disable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_0 read

NVLink Block-Level Clock Gating (All Links)
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_ALL enable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_ALL disable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_BLCG_ALL read

NVLink Second-Level Clock Gating (All Links)
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_ALL enable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_ALL disable
  perl lpe.pl --chip gr10x --Feature regControl --args NVLINK_SLCG_ALL read

Multiple Register Control Operations
  Execute multiple register control operations in a single command

  Format
    perl lpe.pl --chip <chip_type> --Feature regControl --args <control1> <action1> <control2> <action2> [...]

  Examples
    perl lpe.pl --chip gr10x --Feature regControl --args NVDCLK_SD enable PCIE_BLCG enable ELCG_GR enable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_NVDEC_0 disable ELCG_NVJPG_0 disable ELCG_COPY_0 disable
    perl lpe.pl --chip gr10x --Feature regControl --args ELCG_ALL enable NVLINK_SLCG_ALL enable


--------------------------------------------------------------------------------
Register Threshold Configuration
--------------------------------------------------------------------------------

Overview
  Configure engine idle filter and delay thresholds for power management
  Controls four threshold parameters:
    ENG_IDLE_FILT_EXP   - Engine Idle Filter Exponent (bits 12:8)
    ENG_IDLE_FILT_MANT  - Engine Idle Filter Mantissa (bits 15:13)
    ENG_DELAY_BEFORE    - Engine Delay Before (bits 19:16)
    ENG_DELAY_AFTER     - Engine Delay After (bits 23:20)

List All Threshold Configurations
  Display all available threshold configurations with current values

  perl lpe.pl --chip gr10x --Feature regThreshold --args list

Read Threshold Configuration
  Read current threshold values for specific engine(s)

  Single Read Format
    perl lpe.pl --chip gr10x --Feature regThreshold --args <threshold_name> read

  Multiple Read Format (Batch Mode)
    perl lpe.pl --chip gr10x --Feature regThreshold --args read <name1> <name2> <name3> ...

  Multiple Read Format (Paired Mode)
    perl lpe.pl --chip gr10x --Feature regThreshold --args <name1> read <name2> read <name3> read ...

  Batch Read Examples
    perl lpe.pl --chip gr10x --Feature regThreshold --args read ELCG_GR ELCG_NVDEC_0 ELCG_COPY_0
    perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_0 read ELCG_COPY_0 read ELCG_COPY_1 read
    perl lpe.pl --chip gr10x --Feature regThreshold --args read ELCG_NVJPG_0 ELCG_NVJPG_1 ELCG_NVJPG_2
    perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_0 read ELCG_COPY_1 read ELCG_COPY_2 read ELCG_COPY_3 read

Write Threshold Configuration
  Modify threshold values for a specific engine
  Accepts 3 values (MANT BEFORE AFTER) - EXP unchanged
  Accepts 4 values (EXP MANT BEFORE AFTER) - all fields written

  Format (3 values)
    perl lpe.pl --chip gr10x --Feature regThreshold --args <threshold_name> write <MANT> <BEFORE> <AFTER>

  Format (4 values)
    perl lpe.pl --chip gr10x --Feature regThreshold --args <threshold_name> write <EXP> <MANT> <BEFORE> <AFTER>

  Value Range
    EXP    - 5-bit value (0-31)
    MANT   - 3-bit value (0-7)
    BEFORE - 4-bit value (0-15)
    AFTER  - 4-bit value (0-15)

  Value Format
    Supports both decimal and hexadecimal formats
    Can be mixed in a single command

    Pure Decimal Format
      perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 5 10 8

    Pure Hexadecimal Format
      perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 0x5 0xA 0x8

    Mixed Format (Decimal + Hexadecimal)
      perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 5 0xA 8
      perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 0x5 10 0x8

    Note: Hexadecimal values must be prefixed with 0x or 0X (case-insensitive)

  Time Display
    All read/write/list operations display calculated time values
    Formula: Time (μs) = (2^register_value) / 108
    Example output: 0x4 (4) = 0.148 us

ELCG_GR Threshold
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 0x5 0xA 0x8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 7 0xF 0xF
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 7 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_GR write 0x7 0x5 0xA 0x8

ELCG_OFA Threshold
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_0 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_0 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_0 write 0x7 0xF 0xC
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_1 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_1 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_ALL read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_OFA_ALL write 5 10 8

ELCG_COPY Threshold (COPY 0-19)
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_0 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_0 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_1 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_1 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_2 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_2 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_3 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_3 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_4 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_4 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_5 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_5 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_6 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_6 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_7 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_7 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_8 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_8 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_9 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_9 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_10 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_10 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_11 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_11 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_12 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_12 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_13 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_13 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_14 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_14 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_15 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_15 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_16 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_16 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_17 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_17 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_18 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_18 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_19 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_19 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_ALL read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_COPY_ALL write 5 10 8

NVDEC Threshold (NVDEC 0-7)
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_0 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_0 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_1 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_1 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_2 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_2 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_3 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_3 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_4 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_4 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_5 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_5 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_6 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_6 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_7 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_7 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_ALL read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVDEC_ALL write 5 10 8

NVJPG Threshold (NVJPG 0-7)
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_0 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_0 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_1 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_1 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_2 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_2 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_3 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_3 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_4 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_4 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_5 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_5 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_6 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_6 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_7 read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_7 write 5 10 8
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_ALL read
  perl lpe.pl --chip gr10x --Feature regThreshold --args ELCG_NVJPG_ALL write 5 10 8

Complete Examples with BDF Override
  Single Read
    perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regThreshold --args ELCG_GR read

  Batch Read (Batch Mode)
    perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regThreshold --args read ELCG_GR ELCG_NVDEC_0 ELCG_COPY_0

  Batch Read (Paired Mode)
    perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regThreshold --args ELCG_GR read ELCG_NVDEC_0 read

  Write
    perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regThreshold --args ELCG_GR write 5 10 8

  List All
    perl lpe.pl --chip gr10x --bdf 0a:00.0 --Feature regThreshold --args list

Notes
  1. Value Format Support:
     - Supports decimal (5, 10, 8) and hexadecimal (0x5, 0xA, 0x8) formats
     - Values can be mixed in a single command (5 0xA 8)
     - Hexadecimal prefix 0x or 0X (case-insensitive)
     - All outputs display both formats plus calculated time in microseconds

  2. Time Calculation:
     - Formula: Time (μs) = (2^register_value) / 108
     - Displayed in all read/write/list operations
     - Example: Value 4 = 0.148 μs, Value 10 = 9.481 μs

  3. Batch Read Support:
     - Batch mode:  read <name1> <name2> <name3> ...
     - Paired mode: <name1> read <name2> read <name3> read ...

  4. Write Verification:
     - Automatically performed after each write operation
     - Displays [VERIFIED] on success or [WARNING] on mismatch

  5. Value Range Validation:
     - EXP:    0-31  (0x00-0x1F)
     - MANT:   0-7   (0x0-0x7)
     - BEFORE: 0-15  (0x0-0xF)
     - AFTER:  0-15  (0x0-0xF)
     - Exceeding range will result in error message


================================================================================
                          GR15x Command Reference
================================================================================

Note: GR15x shares the same engine set as GR10x but does NOT have PCIe or
NVLink clock gating controls. All commands below use --chip gr15x.

--------------------------------------------------------------------------------
Register Operations
--------------------------------------------------------------------------------

Read All Registers from JSON
  perl lpe.pl --chip gr15x --Feature regTestFromJson --args dump

Direct Register Access
  Same syntax as GR10x, chip-independent:
    perl lpe.pl --Feature regDirect --args <address> read
    perl lpe.pl --Feature regDirect --args <address> write whole <value>
    perl lpe.pl --Feature regDirect --args <address> write <bit> <value>
    perl lpe.pl --Feature regDirect --args <address> write 7:1 <value>

BLCG/SLCG Readback CSV Export
  Parse echo/sudo pairs from blcg.sh or slcg.sh, read each register address,
  extract the requested bits, and export CSV rows.

  Output columns:
    register name, bits, POR value, readback value, whole value

  Read BLCG list from blcg.sh:
    perl lpe.pl --chip gr15x --Feature blcgRead

  Read SLCG list from slcg.sh:
    perl lpe.pl --chip gr15x --Feature slcgRead

  Specify input script and output CSV:
    perl lpe.pl --chip gr15x --Feature blcgRead --args blcg.sh gr15x_blcg_readback.csv
    perl lpe.pl --chip gr15x --Feature slcgRead --args slcg.sh gr15x_slcg_readback.csv

  Override GPU BDF when needed:
    perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature blcgRead
    perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature slcgRead

  Default output files:
    gr15x_blcg_readback.csv
    gr15x_slcg_readback.csv


--------------------------------------------------------------------------------
Engine Residency Measurement
--------------------------------------------------------------------------------

Graphics Engine
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_GR -t 1000

Video Decoder (NVDEC)
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC1 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC2 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC3 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC4 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC5 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC6 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC7 -t 1000

JPEG Decoder (NVJPG)
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG0 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG1 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG2 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG3 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG4 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG5 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG6 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVJPG7 -t 1000

Security Engine
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_SEC -t 1000

Copy Engines (CE0-CE19)
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE0 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE1 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE2 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE3 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE4 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE5 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE6 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE7 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE8 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE9 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE10 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE11 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE12 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE13 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE14 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE15 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE16 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE17 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE18 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_CE19 -t 1000

Optical Flow Accelerator (OFA)
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_OFA0 -t 1000
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_OFA1 -t 1000

Root Gating
  perl lpe.pl --chip gr15x --Feature engResidency --args ROOT_GATE_NVDCLK -t 1000

Multi-Engine Measurement
  perl lpe.pl --chip gr15x --Feature engResidency --args ELCG_NVDEC1 ELCG_NVJPG0 ELCG_GR -t 1000


--------------------------------------------------------------------------------
Register Control
--------------------------------------------------------------------------------

Override GPU BDF Address
  perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature regControl --args NVDCLK_SD enable

NVDCLK Slow down Control
  perl lpe.pl --chip gr15x --Feature regControl --args NVDCLK_SD enable
  perl lpe.pl --chip gr15x --Feature regControl --args NVDCLK_SD disable
  perl lpe.pl --chip gr15x --Feature regControl --args NVDCLK_SD read

NVDCLK Slow down Status (Read Only)
  perl lpe.pl --chip gr15x --Feature regControl --args NVDCLK_SD_STATUS read

Graphics Engine Clock Gating
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_GR enable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_GR disable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_GR read

Optical Flow Accelerator Clock Gating
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_0 enable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_0 disable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_0 read

  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_1 enable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_1 disable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_OFA_1 read

Copy Engine Clock Gating (COPY 0-19)
  Note: All COPY engines support read, enable, and disable operations
  Example for ELCG_COPY_0:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_0 read
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_0 disable
  
  Enable commands for all COPY engines:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_1 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_2 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_3 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_4 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_5 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_6 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_7 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_8 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_9 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_10 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_11 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_12 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_13 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_14 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_15 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_16 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_17 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_18 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_COPY_19 enable

Video Decoder Clock Gating (NVDEC 0-7)
  Note: All NVDEC engines support read, enable, and disable operations
  Example for ELCG_NVDEC_0:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_0 read
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_0 disable
  
  Enable commands for all NVDEC engines:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_1 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_2 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_3 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_4 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_5 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_6 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_7 enable

JPEG Decoder Clock Gating (NVJPG 0-7)
  Note: All NVJPG engines support read, enable, and disable operations
  Example for ELCG_NVJPG_0:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_0 read
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_0 disable
  
  Enable commands for all NVJPG engines:
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_0 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_1 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_2 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_3 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_4 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_5 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_6 enable
    perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVJPG_7 enable

All Engines Clock Gating
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_ALL enable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_ALL disable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_ALL read

Multiple Register Control Operations
  perl lpe.pl --chip gr15x --Feature regControl --args NVDCLK_SD enable ELCG_GR enable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_NVDEC_0 disable ELCG_NVJPG_0 disable ELCG_COPY_0 disable
  perl lpe.pl --chip gr15x --Feature regControl --args ELCG_ALL enable

Note: GR15x does NOT support PCIe (PCIE_BLCG, PCIE_SLCG) or NVLink
      (NVLINK_BLCG_0, NVLINK_SLCG_0, NVLINK_BLCG_ALL, NVLINK_SLCG_ALL)
      clock gating controls. Use GR10x for those features.


--------------------------------------------------------------------------------
Register Threshold Configuration
--------------------------------------------------------------------------------

List All Threshold Configurations
  perl lpe.pl --chip gr15x --Feature regThreshold --args list

Read Threshold Configuration
  Single Read
    perl lpe.pl --chip gr15x --Feature regThreshold --args <threshold_name> read

  Batch Read
    perl lpe.pl --chip gr15x --Feature regThreshold --args read ELCG_GR ELCG_NVDEC_0 ELCG_COPY_0

  Paired Read
    perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_0 read ELCG_COPY_0 read ELCG_COPY_1 read

Write Threshold Configuration
  Format (3 values): <threshold_name> write <MANT> <BEFORE> <AFTER>
  Format (4 values): <threshold_name> write <EXP> <MANT> <BEFORE> <AFTER>

  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 0x5 0xA 0x8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 7 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 0x7 0x5 0xA 0x8

ELCG_GR Threshold
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_GR write 7 5 10 8

ELCG_OFA Threshold
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_0 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_0 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_1 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_1 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_ALL read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_OFA_ALL write 5 10 8

ELCG_COPY Threshold (COPY 0-19)
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_0 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_0 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_1 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_1 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_2 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_2 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_3 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_3 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_4 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_4 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_5 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_5 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_6 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_6 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_7 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_7 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_8 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_8 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_9 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_9 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_10 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_10 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_11 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_11 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_12 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_12 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_13 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_13 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_14 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_14 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_15 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_15 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_16 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_16 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_17 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_17 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_18 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_18 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_19 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_19 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_ALL read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_COPY_ALL write 5 10 8

NVDEC Threshold (NVDEC 0-7)
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_0 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_0 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_1 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_1 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_2 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_2 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_3 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_3 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_4 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_4 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_5 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_5 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_6 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_6 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_7 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_7 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_ALL read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVDEC_ALL write 5 10 8

NVJPG Threshold (NVJPG 0-7)
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_0 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_0 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_1 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_1 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_2 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_2 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_3 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_3 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_4 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_4 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_5 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_5 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_6 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_6 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_7 read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_7 write 5 10 8
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_ALL read
  perl lpe.pl --chip gr15x --Feature regThreshold --args ELCG_NVJPG_ALL write 5 10 8

Complete Examples with BDF Override
  perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature regThreshold --args ELCG_GR read
  perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature regThreshold --args read ELCG_GR ELCG_NVDEC_0 ELCG_COPY_0
  perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature regThreshold --args ELCG_GR write 5 10 8
  perl lpe.pl --chip gr15x --bdf 0a:00.0 --Feature regThreshold --args list


================================================================================
                     GR15x vs GR10x Differences
================================================================================

Supported Features (both chips):
  - regTestFromJson / regFromJson
  - regDirect (direct register read/write)
  - regControl (NVDCLK_SD, ELCG_GR, ELCG_OFA, ELCG_COPY, ELCG_NVDEC, ELCG_NVJPG, ELCG_ALL)
  - regThreshold (all engine thresholds)
  - engResidency (all engines: GR, NVDEC 0-7, NVJPG 0-7, CE 0-19, OFA 0-1, SEC)

GR10x Only (NOT available on GR15x):
  - PCIE_BLCG / PCIE_SLCG controls
  - NVLINK_BLCG_0 / NVLINK_SLCG_0 controls
  - NVLINK_BLCG_ALL / NVLINK_SLCG_ALL controls
  - ELCG_ALL_dual (dual die mode)


================================================================================
End of Document
================================================================================
