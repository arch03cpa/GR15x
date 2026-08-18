package lowPwr;

use strict;
use warnings;
use Exporter 'import';

our $g_utility = "nvpex2";   # default
our $g_utility_id = -1;
our $g_debug_level = 1;

our @EXPORT_OK = qw($g_utility_id $g_utility $g_debug_level checkUtils regWrBar regRdBar);

sub checkUtils
{
    my $g_OS = $^O;
    if ($g_OS eq "MSWin32") {
        # Windows Utlity Check
        if ($g_utility eq "mcppci") {
            if (($ENV{"PATH"} =~ /mcppci/) or (-e "mcppci.exe")) {  
                $g_utility = "mcppci.exe";
                $g_utility_id = 1;
            }
            elsif (-e "D:\\tools\\mcppci_x64\\mcppci.exe") { 
                $g_utility = "D:\\tools\\mcppci_x64\\mcppci.exe";
                $g_utility_id = 1;
            }
            else {
                print "\nERROR: Could not find 'mcppci.exe' in current directory and D:\\tools\\mcppci_x64.";
                exit(0);
            }
        }
        elsif ($g_utility eq "nvpex2") {
            if (($ENV{"PATH"} =~ /nvpex2/) or (-e "nvpex2.exe")) {  
                $g_utility = "nvpex2.exe";
                $g_utility_id = 2;
            }
            elsif (-e "D:\\tools\\nvpex2\\nvpex2.exe") { 
                $g_utility = "D:\\tools\\nvpex2\\nvpex2.exe";
                $g_utility_id = 2;
            }
            else {
                print "\nERROR: Could not find 'nvpex2.exe' in current directory and D:\\tools.";
                exit(0);
            }
        }
        elsif ($g_utility eq "nvpex") {
            print "\nERROR: 'nvpex' is not supported at windows.";
            exit(0);               
        }
        else {
            if (($ENV{"PATH"} =~ /mcppci/) or (-e "mcppci.exe")) {  
                $g_utility = "mcppci.exe";
                $g_utility_id = 1;
            }
            elsif (-e "D:\\tools\\mcppci_x64\\mcppci.exe") { 
                $g_utility = "D:\\tools\\mcppci_x64\\mcppci.exe";
                $g_utility_id = 1;
            }
            elsif (($ENV{"PATH"} =~ /nvpex2/) or (-e "nvpex2.exe")) {
                $g_utility = "nvpex2.exe";
                $g_utility_id = 2;
            }
            elsif (-e "D:\\tools\\nvpex2.exe") { 
                $g_utility = "D:\\tools\\nvpex2.exe";
                $g_utility_id = 2;
            }
            else {
                print "\nERROR: Could not find 'mcppci.exe' in current directory and D:\\tools\\mcppci_x64.";
                print "\nERROR: Could not find 'nvpex2.exe' in current directory and D:\\tools.";
                exit(0);
            }
        }
    }
    else {
        # Linux Utility Check
        # Check that the script was run as root or with sudo
        my $user = qx/whoami/;
        chomp($user);
        if ($user ne "root") {
            print "ERROR: You must run this script as root or with sudo\n";
            print "Exiting...\n";
            exit(1);
        }

        if ($g_utility eq "mcppci") {
            if (-e "/localhome/lab/nvutil/mcppci") {
                $g_utility = "/localhome/lab/nvutil/mcppci";
                $g_utility_id = 1;
            }
            else {
                print "\nERROR: Could not find 'mcppci' in /localhome/lab/nvutil.";
                exit(0);
            }
        }
        elsif ($g_utility eq "nvpex2") {
            if (-e "./nvpex2") {
                $g_utility = "./nvpex2";
                $g_utility_id = 2;
            }
            elsif (-e "/localhome/lab/nvutil/nvpex2") {
                $g_utility = "/localhome/lab/nvutil/nvpex2";
                $g_utility_id = 2;
            }
            else {
                print "\nERROR: Could not find 'nvpex2' in current directory and /localhome/lab/nvutil.";
                exit(0);            
            }
        }
        elsif ($g_utility eq "nvpex") {
            if (-e "./nvpex") {
                $g_utility = "./nvpex";
                $g_utility_id = 3;
            }
            elsif (-e "/localhome/lab/nvutil/nvpex") {
                $g_utility = "/localhome/lab/nvutil/nvpex";
                $g_utility_id = 3;
            }
            else {
                print "\nERROR: Could not find 'nvpex' in current directory and /localhome/lab/nvutil.";
                exit(0);            
            }
        }
        else {
            if (-e "./nvpex2") {
                $g_utility = "./nvpex2";
                $g_utility_id = 2;
            }
            elsif (-e "/localhome/lab/nvutil/nvpex2") {
                $g_utility = "/localhome/lab/nvutil/nvpex2";
                $g_utility_id = 2;
            }
            elsif (-e "./nvpex") {
                $g_utility = "./nvpex";
                $g_utility_id = 3;
            }
            elsif (-e "/localhome/lab/nvutil/nvpex") {
                $g_utility = "/localhome/lab/nvutil/nvpex";
                $g_utility_id = 3;
            }
            elsif (-e "/localhome/lab/nvutil/mcppci") {
                $g_utility = "/localhome/lab/nvutil/mcppci";
                $g_utility_id = 1;
            }
            else {
                print "\nERROR: Could not find 'nvpex2' in current directory and /localhome/lab/nvutil.";
                print "\nERROR: Could not find 'nvpex' in current directory and /localhome/lab/nvutil.";
                print "\nERROR: Could not find 'mcppci' in /localhome/lab/nvutil.";
                exit(0);  
            }
        }
    }

    if ($g_utility ne "" && $g_utility_id != 0) {
        DBGPrint("\nCurrent utility is $g_utility ($g_utility_id).\n");
    }
}

sub regWrBar
{
    my $id = $_[0];
    my $bar = $_[1];
    my $offset = $_[2];
    my $data = $_[3];
    my $mask = "";
    if (defined($_[4])) { $mask = $_[4]; }
    
    my $cmd = "";
    my $rtn = "";

    if ($g_utility_id == '1') {
        $cmd = "$g_utility -sd $id $bar $offset $data $mask";
    }
    elsif ($g_utility_id == '2') {
        if ($mask ne "") {
            $cmd = "$g_utility -b $id -r M:$bar:$offset:$data:$mask";
        }
        else {
            $cmd = "$g_utility -b $id -r W:$bar:$offset:$data";
        }
    }
    elsif ($g_utility_id == '3') {
        $cmd = "$g_utility sd $id $bar $offset $data $mask";
    }

    $rtn = qx/$cmd 2>&1/;
    my $exit_code = $? >> 8;
    
    print("\n$cmd\n") if ($g_debug_level > 1);
    print("$rtn\n") if ($g_debug_level > 2 );
    
    # Check for command execution errors
    # For write operations, suppress "failed to find any domains" warnings for nvpex2
    # This is often a false alarm - the tool may report this but still perform the write
    if ($exit_code != 0 || $rtn =~ /error|failed|invalid|access.*denied|permission denied/i) {
        # Check if it's just the "failed to find any domains" warning (nvpex2 false alarm)
        if ($g_utility_id == '2' && $rtn =~ /failed to find any domains/i) {
            # Suppress this warning - it's a known false alarm that doesn't prevent writes
            # Only log it if debug level is high enough
            if ($g_debug_level > 2) {
                print "[DEBUG] nvpex2 reported 'failed to find any domains' but write may have succeeded\n";
            }
        }
        # Check if it's just a warning (like setpci warnings) vs actual failure
        elsif ($rtn =~ /\berror\b|\bfailed\b/i && !($rtn =~ /warning/i)) {
            # Only show error if it's not the "failed to find any domains" warning
            if (!($rtn =~ /failed to find any domains/i)) {
                print "\n" . "="x70 . "\n";
                print "[ERROR] Register write failed!\n";
                print "="x70 . "\n";
                print "  BDF Address: $id\n";
                print "  BAR: $bar, Offset: 0x$offset, Data: 0x$data\n";
                print "  Command: $cmd\n";
                print "  Error output: $rtn\n";
                print "\nPossible causes:\n";
                print "  1. Device not found - BDF address '$id' does not exist\n";
                print "  2. Insufficient permissions - must run as Administrator/root\n";
                print "  3. Invalid BAR/offset - BAR number or register offset is incorrect\n";
                print "  4. Driver issue - GPU driver not loaded or device not responding\n";
                print "  5. Tool failure - low-level tool '$g_utility' failed to execute\n";
                print "\nSolutions:\n";
                print "  - Check Device Manager to see if GPU device is present\n";
                print "  - Windows: Right-click Command Prompt -> Run as Administrator\n";
                print "  - Linux:   Use sudo to run the script\n";
                print "  - Verify BDF format: XX:XX.X (e.g., 09:00.0)\n";
                print "  - Run 'lspci | grep -i nvidia' (Linux) or check Device Manager (Windows)\n";
                print "="x70 . "\n\n";
            }
        }
    }
    
    return $rtn;
}

sub regRdBar
{
    my $id = $_[0];
    my $bar = $_[1];
    my $offset = $_[2];
    
    my $cmd = "";
    my $rtn = "";

    if ($g_utility_id == '1') {              # mcppci command
        $cmd = "$g_utility -gd $id $bar $offset";
    }
    elsif ($g_utility_id == '2') {        # nvpex2 command
        $cmd = "$g_utility -b $id -r R:$bar:$offset";
    }
    elsif ($g_utility_id == '3') {         # nvpex command
        $cmd = "$g_utility gd $id $bar $offset";
    }

    $rtn = qx/$cmd 2>&1/;
    my $exit_code = $? >> 8;
    
    print("\n$cmd\n") if ($g_debug_level > 1);
    print("$rtn\n") if ($g_debug_level > 2 );
    
    # Try to extract register value first
    my $reg_value = getRegVal($g_utility_id, split(/\n/, $rtn));
    
    # Check for command execution errors
    # Only report error if we couldn't extract a valid register value
    if (!defined($reg_value) || $reg_value eq "") {
        if ($exit_code != 0 || $rtn =~ /error|failed|invalid|not found|no devices|warning.*no devices|access.*denied|permission/i) {
            print "\n" . "="x70 . "\n";
            print "[ERROR] Register read failed!\n";
            print "="x70 . "\n";
            print "  BDF Address: $id\n";
            print "  BAR: $bar, Offset: 0x$offset\n";
            print "  Command: $cmd\n";
            print "  Error output: $rtn\n";
            print "\nPossible causes:\n";
            print "  1. Device not found - BDF address '$id' does not exist\n";
            print "     (Check: Device Manager for presence of GPU device)\n";
            print "  2. Insufficient permissions - must run as Administrator/root\n";
            print "     (Windows: Right-click Command Prompt -> Run as Administrator)\n";
            print "     (Linux: Use 'sudo perl lpe.pl ...')\n";
            print "  3. Invalid BAR/offset - BAR number or register offset is incorrect\n";
            print "  4. Driver issue - GPU driver not loaded or device in abnormal state\n";
            print "     (Check: Run 'nvidia-smi' to verify driver status)\n";
            print "  5. Tool failure - low-level tool '$g_utility' cannot access hardware\n";
            print "\nTroubleshooting steps:\n";
            print "  Step 1: Verify BDF address\n";
            print "          Format must be XX:XX.X (e.g., 09:00.0, 04:00.0)\n";
            print "          Windows: Device Manager->Display adapters->Properties->Details->Location\n";
            print "          Linux:   lspci | grep -i nvidia\n";
            print "  Step 2: Check permissions\n";
            print "          Ensure running with Administrator/root privileges\n";
            print "  Step 3: Verify device status\n";
            print "          Device should work properly in Device Manager (no yellow exclamation)\n";
            print "  Step 4: Test low-level tool\n";
            print "          Run directly: $g_utility (check for any output)\n";
            print "="x70 . "\n\n";
            return "00000000";  # Return safe value to prevent subsequent errors
        }
    }
    # If we successfully extracted a register value, suppress error messages
    # The "failed to find any domains" warning is often a false alarm when reading succeeds
    
    # If we got here, either no error or we successfully extracted a value despite warnings
    return $reg_value;
}

sub getRegVal
{
    my $line;
    my $format = shift;
    my @ret = @_;
    foreach $line (@ret) {   
        if ($format == '0') {
            # setpci Format
            if ($line =~ /^(\w{8})$/) {
                return($1);
            }
        }
        elsif ($format == '1') { # mcppci Format
            if ($line =~ /^ 0x(\w{8})/) {
                return($1);
            }
            elsif ($line =~ /=> (\w{8})/) {
                return($1);
            }
        }
        elsif ($format == '2') {   # nvpex2 Format
            # Try multiple patterns to extract register value
            # Pattern 1: Standard format with # and <-
            if ($line =~ /\#\s+(\w{8})\s+<-/s) {
                return($1);
            }
            # Pattern 2: Alternative format without #
            if ($line =~ /R:\d+:\w+\s+(\w{8})/s) {
                return($1);
            }
            # Pattern 3: Hex value after colon or equals
            if ($line =~ /[:\s]0x(\w{8})/s) {
                return($1);
            }
            # Pattern 4: Standalone 8-digit hex value
            if ($line =~ /\b(\w{8})\b/s && $line !~ /error|failed/i) {
                # Only match if it looks like a hex value and not part of error message
                if ($1 =~ /^[0-9a-fA-F]{8}$/) {
                    return($1);
                }
            }
        }
        elsif ($format == '3') { # nvpex Format
            if ($line =~ /-> 0x(\w{8})/) {
                return($1);
            }
        }
        else {
            print "ERROR: Unsupported Register Access Value Format Type.\n";
            print "Exiting...\n";
            exit(1);
        }
    }
}

sub DBGPrint
{
    my $printStr = $_[0];
    if ($g_debug_level == 1) {       
        print "$printStr";
        return;
    }
}

1;