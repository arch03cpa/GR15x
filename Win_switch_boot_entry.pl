#! /usr/bin/perl
# $Id: //hdclone/storage_customizations/Win_switch_boot_entry.pl#6 $
#
# Windows Boot Entry Switcher
# This script allows you to switch between different OS boot entries on Windows systems.
# It supports both UEFI and Legacy boot modes.
#
# Usage:
#   perl Win_switch_boot_entry.pl [boot_index] [reboot_choice]
#   perl Win_switch_boot_entry.pl --list              # List all available boot entries
#   perl Win_switch_boot_entry.pl --os "OS_NAME"      # Set boot entry by OS name (without rebooting)
#   perl Win_switch_boot_entry.pl --os "OS_NAME" --reboot  # Set boot entry by OS name and reboot
#   perl Win_switch_boot_entry.pl --verbose           # Enable verbose output
#   perl Win_switch_boot_entry.pl --debug             # Enable debug output
#
# Examples:
#   perl Win_switch_boot_entry.pl --list              # Just show available boot options
#   perl Win_switch_boot_entry.pl --os "Windows"      # Set boot entry containing "Windows"
#   perl Win_switch_boot_entry.pl --os "Windows x64" --reboot  # Set and reboot to Windows x64
#   perl Win_switch_boot_entry.pl --os "Ubuntu"       # Set boot entry containing "Ubuntu"
#   perl Win_switch_boot_entry.pl 0 y                 # Switch to boot entry 0 and reboot immediately
#   perl Win_switch_boot_entry.pl 1 n                 # Switch to boot entry 1 but don't reboot

# Includes
use strict;
use warnings;
use English '-no_match_vars';
use Carp qw(croak carp);
use Fatal qw(open close);
use IPC::System::Simple qw(system capture $EXITVAL);
use Net::Ping;
use Sys::Hostname;
use File::Compare;
use Getopt::Long;
my ($debug,$verbose,$list,$os,$reboot);
GetOptions('debug' => \$debug, 'verbose' => \$verbose, 'list' => \$list, 'os=s' => \$os, 'reboot' => \$reboot) || die "Errors in command line\n";

# Validate parameters
if (defined $reboot && !defined $os) {
    die "Error: --reboot can only be used with --os parameter\n";
}

# Globals
my $isLinux;
my $isEFI=0;
##############################################################################
# Setup logging
##############################################################################
my $LOGPATH = '/var/log/OS_Switch.log';
my $VERBOSE = 2;
my $DEBUG   = 1;
my $NORMAL  = 0;

if ( defined $verbose ) {
    print "Verbose mode enabled\n";
}

##############################################################################
# Is this Windows or Linux?
##############################################################################
if ( -d '/etc/init.d' )
{
    $isLinux = 1;
    PrintnLog("The OS is Linux, not Windows!!!\nIf you need run Linux script, please run './Linux_switch_boot_entry.sh' under the folder\n",$NORMAL);
    exit 1;
}
else
{
    $isLinux = 0;
    # Only clear screen if no special parameters (other than debug/verbose) are specified
    if (!defined $list && !defined $os) {
        if (system('cls') != 0) {
            croak("ERROR: Could not clear screen : $OS_ERROR");
        }
    }
}

MainTasks();

#################### Subroutines Only Below This Line ########################


##############################################################################
# Function: print messages to the screen and log them to /var/log/LocalStartup.log
##############################################################################
sub PrintnLog
{
    if ( @_ != 2 )
    {
        croak 'wrong Number of arguments: ' . @_ . " from @ARGV\n";
    }
    my $message     = shift;
    my $outputLevel = shift;
    my $text2log    = '';
    #normal messages are always printed to screen and log
    if ($outputLevel == $NORMAL) {
        print $message;
        $text2log = $text2log . $message;
    }
    #debug messages are always printed to the log but only shown on screen if -debug is invoked
    elsif ($outputLevel == $DEBUG) {
        print $message if (defined $debug);
        $text2log = $text2log . $message;
    }
    #verbose messages only printed to the screen and log if -verbose is invoked
    elsif ($outputLevel == $VERBOSE) {
        $text2log = $text2log . $message if (defined $verbose);
    }
    if ($isLinux) {
        open my $LOG, '>>', $LOGPATH or croak("Could not open $LOGPATH : $OS_ERROR");
        print $LOG $text2log;
        close($LOG) or croak("Could not close $LOGPATH : $OS_ERROR");
    }
    return;
}

##############################################################################
# Function: wrap external cmd with output
##############################################################################
sub run_system_command {
    if ( @_ != 1 )
    {
        croak 'wrong Number of arguments: ' . @_ . " from @ARGV\n";
    }
    my $command = shift;
    if ( defined $verbose ) {
        print "\@\@\@ About to run\@\@\@ $command\n"
          or croak "Error: $command\n";
    }
    my $command_output = capture($command)
      or croak "Error: $command";
    print "  the result is $command_output \n"
    if ( defined $verbose );
    return $command_output;
}

##############################################################################
# Function: check if system is UEFI or Legacy
##############################################################################
sub CheckMode
{
    my $command;
    my $mode;
    my $command_output;
    $command = "bcdedit /enum";
    $command_output = run_system_command($command);
    if ($command_output =~ /^.*winload\.(.*)description/xms){
        $mode = $1;
        $mode=~s/[\r\n]//g;
        print "  the system mode is $mode \n" if ( defined $verbose );
        if ( $mode eq "efi" ){
            $isEFI = 1;
            print "The system is under [UEFI] mode\n";
        }
        else{
            print "The system is under [Legacy] mode\n";
        }
        print "\$isEFI is $isEFI\n" if ( defined $verbose );
    }
    # $isEFI = 0;
    return; 
}

##############################################################################
# Function: list all available boot entries
##############################################################################
sub ListBootEntries
{
    my $title = shift || "Available boot entries:";
    print "$title\n";
    my @boot_list = ();
    if ($isEFI==1){
        open my $grub_cfg, '<','s:\\boot\\grub\\grub.cfg' or croak("Could not open s:\\boot\\grub\\grub.cfg : $OS_ERROR");
        my @grub_cfgData=<$grub_cfg>;
        close($grub_cfg)                                  or croak("Could not close s:\\boot\\grub\\grub.cfg : $OS_ERROR");
        my $index=0;
        my $entry;
        foreach my $line (@grub_cfgData) {
            if ($line =~ m/^menuentry\s'(.*)'.*$/xms ){
                $entry = $1;
                print "    [$index] $entry\n";
                push(@boot_list,$entry);
                $index +=1;
            }
        }
    }
    else{
        open my $menu_lst, '<','d:\\menu.lst' or croak("Could not open d:\\menu.lst : $OS_ERROR");
        my @menu_lstData=<$menu_lst>;
        close($menu_lst)                                  or croak("Could not close d:\\menu.lst : $OS_ERROR");
        my $index=0;
        my $entry;
        foreach my $line (@menu_lstData) {
            if ($line =~ m/^title (.*)$/xms ){
                $entry = $1;
                print "    [$index] $entry\n";
                push(@boot_list,$entry);
                $index +=1;
            }
        }
    }
    
    if (@boot_list == 0) {
        print "    No boot entries found.\n";
    }
    
    return @boot_list;
}

##############################################################################
# Function: set boot entry by operating system name
##############################################################################
sub SetBootEntryByName
{
    my $target_os = shift;
    if (!defined $target_os || $target_os eq '') {
        croak("Error: No operating system name provided");
    }
    
    print "Looking for boot entry matching: '$target_os'\n";
    
    # Get the boot entry list
    my @boot_list = ();
    my $next_boot_index = -1;
    my $next_boot = '';
    
    if ($isEFI==1){
        open my $grub_cfg, '<','s:\\boot\\grub\\grub.cfg' or croak("Could not open s:\\boot\\grub\\grub.cfg : $OS_ERROR");
        my @grub_cfgData=<$grub_cfg>;
        close($grub_cfg)                                  or croak("Could not close s:\\boot\\grub\\grub.cfg : $OS_ERROR");
        my $index=0;
        my $entry;
        foreach my $line (@grub_cfgData) {
            if ($line =~ m/^menuentry\s'(.*)'.*$/xms ){
                $entry = $1;
                push(@boot_list,$entry);
                # Check if this entry matches the target OS (case-insensitive partial match)
                if ($entry =~ /\Q$target_os\E/i) {
                    $next_boot_index = $index;
                    $next_boot = $entry;
                    print "Found matching boot entry at index [$index]: '$entry'\n";
                }
                $index +=1;
            }
        }
    }
    else{
        open my $menu_lst, '<','d:\\menu.lst' or croak("Could not open d:\\menu.lst : $OS_ERROR");
        my @menu_lstData=<$menu_lst>;
        close($menu_lst)                                  or croak("Could not close d:\\menu.lst : $OS_ERROR");
        my $index=0;
        my $entry;
        foreach my $line (@menu_lstData) {
            if ($line =~ m/^title (.*)$/xms ){
                $entry = $1;
                push(@boot_list,$entry);
                # Check if this entry matches the target OS (case-insensitive partial match)
                if ($entry =~ /\Q$target_os\E/i) {
                    $next_boot_index = $index;
                    $next_boot = $entry;
                    print "Found matching boot entry at index [$index]: '$entry'\n";
                }
                $index +=1;
            }
        }
    }
    
    if ($next_boot_index == -1) {
        print "Error: No boot entry found matching '$target_os'\n";
        print "Available boot entries:\n";
        for my $i (0 .. $#boot_list) {
            print "    [$i] $boot_list[$i]\n";
        }
        croak("Boot entry not found");
    }
    
    # Update boot entry file (same logic as SwitchEntry)
    if ($isEFI==1){
        open my $grubenv, '+<','s:\\boot\\grub\\grubenv' or croak("Could not open s:\\boot\\grub\\grubenv : $OS_ERROR");
        my @grubenvData=<$grubenv>;
        my @grubenvUpdate = (); 
        foreach my $line (@grubenvData) {
            chomp $line;
            $line =~ s/\r\n/\n/g;
            if ($line =~ m/^saved_entry=.*$/xms ){
                $line =~ s/=.*$/=$next_boot/g;
                push @grubenvUpdate, $line;  
            }
            else{
                push @grubenvUpdate, $line;   
            }
        }
        seek $grubenv, 0, 0;
        print  $grubenv join "\n", @grubenvUpdate;
        close($grubenv)                                  or croak("Could not close s:\\boot\\grub\\grubenv : $OS_ERROR");
        system("D:\\dos2unix s:\\boot\\grub\\grubenv");
        # compatible the grub2 version
        my $Grub2EnvPath = qq[S:\\boot\\grub2\\grubenv];
        if ( -e $Grub2EnvPath) {
            # copy the grub file to grub2
            system( "xcopy S:\\boot\\grub\\grubenv S:\\boot\\grub2 /s /e /Y");
            system("D:\\dos2unix s:\\boot\\grub2\\grubenv");
        }
    }
    else{
        open my $default, '+<','d:\\default' or croak("Could not open d:\\default : $OS_ERROR");
        my @defaultData=<$default>;
        my @defaultUpdate = (); 
        foreach my $line (@defaultData) {
            chomp $line;
            $line =~ s/\r\n/\n/g;
            if ($line =~ m/^[0-9]{1,2}(.*)$/xms ){
                $line =~ s/^[0-9]{1,2}/$next_boot_index/g;
                push @defaultUpdate, $line;  
            }
            else{
                push @defaultUpdate, $line;   
            }
        }
        seek $default, 0, 0;
        print  $default join "\n", @defaultUpdate;
        close($default)                                  or croak("Could not close d:\\default : $OS_ERROR");
        # convert to Unix format
        system("perl -MExtUtils::Command -e dos2unix d:\\default");
    }
    
    print "Successfully set next boot entry to: '$next_boot'\n";
    PrintnLog("Boot entry set to '$next_boot' by OS name '$target_os'\n",$NORMAL);
    
    return $next_boot;
}

##############################################################################
# Function: update the next boot entry after customer's interaction
##############################################################################
sub SwitchEntry
{
    # Get the boot entry list by calling ListBootEntries
    my @boot_list = ListBootEntries("Current disk's boot entry list:");

    my $next_boot;
	my $next_boot_index;
	my $args_index = 0;
	# fetch index by command line args
	if (defined($ARGV[0])){
		$next_boot_index = $ARGV[0];
		$args_index = 1;
	}
	while (1) {
		# jump out first time keyboard input if receive index by command line args
		if ($args_index == 1) {
			$args_index = 0;
		}
		else {
			# input index by keyboard
			print "Select the next boot index:";
			$next_boot_index = <STDIN>;
			chomp( $next_boot_index );
		}
		
		if ($next_boot_index !~ /^\d+$/) {
			print "'$next_boot_index' is not an valid index number, please type again\n";
			next;
		}
		if ($next_boot_index > $#boot_list) {
			print "'$next_boot_index' is out of range,please check again\n";
			next;
		}
		else {
			$next_boot = $boot_list[$next_boot_index];
			print "'$next_boot' is chosen as the next boot option\n";
			last;
		}
	}
	
    # update boot entry file(default or grubenv)
    if ($isEFI==1){
        open my $grubenv, '+<','s:\\boot\\grub\\grubenv' or croak("Could not open s:\\boot\\grub\\grubenv : $OS_ERROR");
        my @grubenvData=<$grubenv>;
        my @grubenvUpdate = (); 
        foreach my $line (@grubenvData) {
            chomp $line;
            $line =~ s/\r\n/\n/g;
            if ($line =~ m/^saved_entry=.*$/xms ){
                # print "before:","$line";
                $line =~ s/=.*$/=$next_boot/g;
                # print "after:","$line";
                push @grubenvUpdate, $line;  
            }
            else{
                push @grubenvUpdate, $line;   
            }
        }
        seek $grubenv, 0, 0;
        print  $grubenv join "\n", @grubenvUpdate;
        close($grubenv)                                  or croak("Could not close s:\\boot\\grub\\grubenv : $OS_ERROR");
        system("D:\\dos2unix s:\\boot\\grub\\grubenv");
        # compatible the grub2 version
        my $Grub2EnvPath = qq[S:\\boot\\grub2\\grubenv];
        if ( -e $Grub2EnvPath) {
            # copy the grub file to grub2
            system( "xcopy S:\\boot\\grub\\grubenv S:\\boot\\grub2 /s /e /Y");
            system("D:\\dos2unix s:\\boot\\grub2\\grubenv");
        }
    }
    else{
        open my $default, '+<','d:\\default' or croak("Could not open d:\\default : $OS_ERROR");
        my @defaultData=<$default>;
        my @defaultUpdate = (); 
        foreach my $line (@defaultData) {
            chomp $line;
            $line =~ s/\r\n/\n/g;
            if ($line =~ m/^[0-9]{1,2}(.*)$/xms ){
                $line =~ s/^[0-9]{1,2}/$next_boot/g;
                push @defaultUpdate, $line;  
            }
            else{
                push @defaultUpdate, $line;   
            }
        }
        seek $default, 0, 0;
        print  $default join "\n", @defaultUpdate;
        close($default)                                  or croak("Could not close d:\\default : $OS_ERROR");
        # convert to Unix format
        system("perl -MExtUtils::Command -e dos2unix d:\\default");

    }
    PrintnLog("finish update the next boot entry\n",$NORMAL);
}

##############################################################################
# Function: mount the desired cloning mirror
##############################################################################
sub MountBoot
{
    if ( !$isLinux ) {
        #windows mounts
        if ($isEFI==1){
            # mount ESP partition to S: for windows in UEFI mode
            my $GrubEnvPath = qq[S:\\boot\\grub\\grubenv];
            my $Grub2EnvPath = qq[S:\\boot\\grub2\\grubenv];
            my $mountEspPath = qq[C:\\mount_esp.txt]; 
            if (!( -e $GrubEnvPath || -e $Grub2EnvPath)) {
                print "Mounting ESP partition to s:\n";
                if (!( -e $mountEspPath)) {
                   system( "echo select disk 0 > C:\\mount_esp.txt");
                   system( "echo select partition 1 >> C:\\mount_esp.txt");
                   system( "echo assign letter=s >> C:\\mount_esp.txt");
                }
                if (system( "diskpart /s c:\\mount_esp.txt" ) !=0) {
                        print "Fail to mount ESP partition\n";
                        exit 1;
                    } 
                else {
                        print "Finish mount ESP partition\n";
                        system( "del c:\\mount_esp.txt" );
                    }
              }
              # compatible the grub2 version
            if (!( -e $GrubEnvPath)) {
                # copy the grub2 file to grub
                system("mkdir S:\\boot\\grub");
                system( "xcopy S:\\boot\\grub2\\* S:\\boot\\grub /s /e /Y");
            }
        }
        else{
            my $StoragePath = qq[D:\\menu.lst];
            my $mountStorPath = qq[C:\\mount_storage.txt];     
            if (!( -e $StoragePath)) {
                if (!( -e $mountStorPath)){
                   system( "echo select disk 0 > C:\\mount_storage.txt");
                   system( "echo select partition 15 >> C:\\mount_storage.txt");
                   system( "echo assign letter=d >> C:\\mount_storage.txt");
                }
                system( "diskpart /s c:\\mount_storage.txt" );
                if (system( "diskpart /s c:\\mount_storage.txt" ) !=0) {
                        print "Fail to mount Storage partition\n";
                        exit 1;
                    } 
                else {
                        print "Finish mount Storage partition\n";
                        system( "del c:\\mount_storage.txt" );
                    }
           }
        }

    }
    return;
}

##############################################################################
# Function: unmount the boot partition
##############################################################################
sub UnMount {
    if ( ! $isLinux ) {
        #clean up the mounts in windows
        if (system('umount p:') != 0) {
            croak("ERROR: Could not umount p: : $OS_ERROR");
        }
    }
    return;
}

##############################################################################
# Function: unmount the boot partition 
	# print 
    # "       --------------------------------------------------------------\n" .
    # "       Do you want to restart right now(default is N)?\n" .
    # "       --------------------------------------------------------------\n" .
    # "[Y/N]";
##############################################################################
sub RebootNow 
{
	my $input;
	# input whether reboot now by keyboard
	if(!defined($ARGV[1])) {
		print "Do you want to reboot now(default is N)?[y/n]";
		chomp( $input = <STDIN> );
	}
	# fetch whether reboot now by command line args
	else{
		$input = $ARGV[1];
	}
	if ($input =~ /^[Y]$/i) {      # Match Yy or blank
		system("shutdown -t 0 -r -f");
	} elsif ($input =~ /^[N]$/i) {  # Match Nn
		print "It will effect next boot\n";
	} else {
		print "It will effect next boot\n";
	}
    return;
}

##############################################################################
# Function: switch os boot entry task's main point
##############################################################################
sub MainTasks
{
    PrintnLog("Start OS Boot Entry Switch ...\n",$NORMAL);
    # check current mode (legacy or UEFI)
    CheckMode();
    # mount target boot partition(15 or 1)
    MountBoot();
    
    # If --list parameter is specified, only show boot entries and exit
    if (defined $list) {
        ListBootEntries();
        PrintnLog("Boot entries listed successfully.\n",$NORMAL);
        return;
    }
    
    # If --os parameter is specified, set boot entry by OS name
    if (defined $os) {
        SetBootEntryByName($os);
        # If --reboot is also specified, reboot immediately
        if (defined $reboot) {
            print "Rebooting now...\n";
            system("shutdown -t 0 -r -f");
        } else {
            print "Boot entry set successfully. Changes will take effect on next reboot.\n";
        }
        PrintnLog("OS Boot Entry set by name completed.\n",$NORMAL);
        return;
    }
    
    SwitchEntry();
    # unmount the boot partion
#    UnMount();
    # query for reboot now
    RebootNow();
    PrintnLog("End OS Boot Entry Switch ...\n",$NORMAL);
    return;
}

