#!/bin/bash
# $Id: //hdclone/storage_customizations/Linux_switch_boot_entry.sh#11 $
#
# Linux Boot Entry Switcher
# This script allows you to switch between different OS boot entries on Linux systems.
# It supports both UEFI and Legacy boot modes.
#
# Usage:
#   ./Linux_switch_boot_entry.sh [boot_index] [reboot_choice]
#   ./Linux_switch_boot_entry.sh --list              # List all available boot entries
#   ./Linux_switch_boot_entry.sh --os "OS_NAME"      # Set boot entry by OS name (without rebooting)
#   ./Linux_switch_boot_entry.sh --os "OS_NAME" --reboot  # Set boot entry by OS name and reboot
#
# Examples:
#   ./Linux_switch_boot_entry.sh --list              # Just show available boot options
#   ./Linux_switch_boot_entry.sh --os "Windows"      # Set boot entry containing "Windows"
#   ./Linux_switch_boot_entry.sh --os "Windows 10" --reboot  # Set and reboot to Windows 10
#   ./Linux_switch_boot_entry.sh --os "Ubuntu"       # Set boot entry containing "Ubuntu"
#   ./Linux_switch_boot_entry.sh 0 y                 # Switch to boot entry 0 and reboot immediately
#   ./Linux_switch_boot_entry.sh 1 n                 # Switch to boot entry 1 but don't reboot
#
#set -x
set -e

##############################################################################
# Parse command line arguments
##############################################################################
LIST_ONLY=0
OS_NAME=""
REBOOT_AFTER=0

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --list)
            LIST_ONLY=1
            shift
            ;;
        --os)
            if [[ -n "$2" && "$2" != --* ]]; then
                OS_NAME="$2"
                shift 2
            else
                echo "Error: --os requires an OS name argument"
                exit 1
            fi
            ;;
        --reboot)
            REBOOT_AFTER=1
            shift
            ;;
        --help|-h)
            echo "Usage: $0 [OPTIONS] [boot_index] [reboot_choice]"
            echo "Options:"
            echo "  --list              List all available boot entries"
            echo "  --os \"OS_NAME\"      Set boot entry by OS name"
            echo "  --reboot            Reboot after setting OS (use with --os)"
            echo "  --help              Show this help message"
            exit 0
            ;;
        -*)
            echo "Unknown option: $1"
            exit 1
            ;;
        *)
            # Positional arguments for legacy mode
            break
            ;;
    esac
done

# Validate parameters
if [[ $REBOOT_AFTER -eq 1 && -z "$OS_NAME" ]]; then
    echo "Error: --reboot can only be used with --os parameter"
    exit 1
fi

declare -A dict
dict=()

##############################################################################
# Function: list all available boot entries
##############################################################################
list_boot_entries() {
    local title="${1:-Available boot entries:}"
    echo "$title"
    
    # Clear dict and reload entries
    declare -A local_dict=()
    
    if [ $is_efi -eq 1 ];then
        #compatible with the older grub version
        test -d $BOOT_PART/boot/grub||cp -r $BOOT_PART/boot/grub2 $BOOT_PART/boot/grub 
        boot_list=$(grep menuentry $BOOT_PART/boot/grub/grub.cfg |cut -d "'" -f 2| xargs -I {} echo "{}+")
    else
        boot_list=$(grep title $BOOT_PART/menu.lst | sed 's,.*title ,,;'| xargs -I {} echo "{}+")
    fi
    
    IFS='+'
    i=0
    for entry in $boot_list
        do
           entry=$(echo $entry | tr -d "\n")
           echo "    [$i] $entry"
           if [ $is_efi -eq 1 ];then
              local_dict+=([$i]="$entry")
           else
               local_dict+=([$i]="$i")
           fi
           i=$(($i+1)) 
        done
    unset IFS
    
    if [ ${#local_dict[@]} -eq 0 ]; then
        echo "    No boot entries found."
    fi
    
    # Copy to global dict for use by other functions
    for key in "${!local_dict[@]}"; do
        dict[$key]="${local_dict[$key]}"
    done
}

##############################################################################
# Function: set boot entry by operating system name
##############################################################################
set_boot_entry_by_name() {
    local target_os="$1"
    if [[ -z "$target_os" ]]; then
        echo "Error: No operating system name provided"
        exit 1
    fi
    
    echo "Looking for boot entry matching: '$target_os'"
    
    # First populate the boot entries
    list_boot_entries >/dev/null 2>&1
    
    local next_boot_index=-1
    local next_boot=""
    local found_entries=()
    
    # Search for matching entries (case-insensitive partial match)
    for index in "${!dict[@]}"; do
        entry="${dict[$index]}"
        # Check if entry contains the target OS name (case-insensitive)
        if [[ "${entry,,}" == *"${target_os,,}"* ]]; then
            next_boot_index=$index
            next_boot="$entry"
            found_entries+=("[$index] $entry")
            echo "Found matching boot entry at index [$index]: '$entry'"
        fi
    done
    
    if [[ $next_boot_index -eq -1 ]]; then
        echo "Error: No boot entry found matching '$target_os'"
        echo "Available boot entries:"
        for index in "${!dict[@]}"; do
            echo "    [$index] ${dict[$index]}"
        done
        exit 1
    fi
    
    # If multiple matches found, use the first one
    if [[ ${#found_entries[@]} -gt 1 ]]; then
        echo "Multiple matches found:"
        for match in "${found_entries[@]}"; do
            echo "    $match"
        done
        echo "Using the first match: [$next_boot_index] $next_boot"
    fi
    
    # Update boot entry file (same logic as main script)
    if [ $is_efi -eq 1 ];then
        if [ -e $BOOT_PART/boot/grub/grubenv ];then
            sed -i "s/=.*$/=$next_boot/" $BOOT_PART/boot/grub/grubenv
            test -d $BOOT_PART/boot/grub2 && cp $BOOT_PART/boot/grub/grubenv $BOOT_PART/boot/grub2/grubenv
        elif [ -e $BOOT_PART/boot/grub/GRUBENV ]; then
            sed -i "s/=.*$/=$next_boot/" $BOOT_PART/boot/grub/GRUBENV
            test -d $BOOT_PART/boot/grub2 && cp $BOOT_PART/boot/grub/GRUBENV $BOOT_PART/boot/grub2/GRUBENV
        fi
    else
        sed -i "s/^[0-9]\{1,2\}/$next_boot_index/" $BOOT_PART/default
    fi
    
    echo "Successfully set next boot entry to: '$next_boot'"
    echo "Boot entry set to '$next_boot' by OS name '$target_os'"
    
    return 0
}

##############################################################################
# check the script is running under Linux
##############################################################################
if [ -d '/etc/init.d' ];then
    # Only clear screen if no special parameters are specified
    if [[ $LIST_ONLY -eq 0 && -z "$OS_NAME" ]]; then
        clear 
    fi
else
    echo "The OS is not Linux!!!"
    exit 1
fi
echo "Start OS Boot Entry Switch ..."

##############################################################################
# Handle special parameters
##############################################################################
# If --list parameter is specified, only show boot entries and exit
if [[ $LIST_ONLY -eq 1 ]]; then
    # We still need to do the basic setup first
    echo "Preparing to list boot entries..."
fi

# If --os parameter is specified, we'll handle it after mounting
if [[ -n "$OS_NAME" ]]; then
    echo "Preparing to set boot entry to: '$OS_NAME'"
fi

##############################################################################
# check current mode (legacy or UEFI)
##############################################################################
is_efi=1
if [ -d "/sys/firmware/efi" ];then
    echo "The system is under [UEFI] mode"
    is_efi=1
else
    echo "The system is under [Legacy] mode"
    is_efi=0 
fi

##############################################################################
# mount target boot partition(15 or 1)
##############################################################################
#is_nvme=$(sed -n /nvme/= "/proc/partitions" | head -n 1)
BOOT_PART="/tmp/boot_partition"
test -d $BOOT_PART || mkdir -m 700 $BOOT_PART

if [ $is_efi -eq 1 ];then
    efi_part_count=$(blkid | grep -w ESP | wc -l)
    efi_part=$(blkid | grep -w ESP | sed 's,:.*,,')
    # has multi bootable disk, let user choose which one is in first piror
    if [ $efi_part_count -gt 1 ];then
        echo "You have multi bootable disk, blow are all efi partition found: "
        echo "$efi_part"
        read -p "Please type the efi partition path which you set as first boot option (ex. /dev/sda1): " efi_input
        efi_part=$efi_input
    fi
    efi_dir=$(mount | grep -w $efi_part | head -n 1 | sed 's,.* on ,,; s, type.*,,;')
    if [ -z $efi_dir ];then
        mount $efi_part $BOOT_PART
    else
        BOOT_PART=$efi_dir
    fi
else
    storage_part_count=$(blkid | grep -w STORAGE | wc -l)
    storage_part=$(blkid | grep -w STORAGE | sed 's,:.*,,')
    # has multi storage disk, let user choose which one is in first piror used
    if [ $storage_part_count -gt 1 ];then
        echo "You have multi disk, blow are all storage partition found: "
        echo "$storage_part"
        read -p "Please type the storage partition path which you choose to use (ex. /dev/sda15): " storage_input
        storage_part=$storage_input
    fi
    # storage partition is ntfs type which can only mount once, need to search already mounted dir
    storage_dir=$(mount | grep -w $storage_part | head -n 1 | sed 's,.* on ,,; s, type.*,,;')
    if [ -z $storage_dir ];then
        mount $storage_part $BOOT_PART
    else
        BOOT_PART=$storage_dir
    fi
fi

##############################################################################
# Handle special parameters after mounting
##############################################################################
# If --list parameter is specified, only show boot entries and exit
if [[ $LIST_ONLY -eq 1 ]]; then
    list_boot_entries
    echo "Boot entries listed successfully."
    # Clean up mount point
    TMP_POINT="/tmp/boot_partition"
    if [ "$BOOT_PART" = "$TMP_POINT" ];then
        umount $BOOT_PART
    fi
    echo "End OS Boot Entry Switch ..."
    exit 0
fi

# If --os parameter is specified, set boot entry by OS name
if [[ -n "$OS_NAME" ]]; then
    set_boot_entry_by_name "$OS_NAME"
    # If --reboot is also specified, reboot immediately
    if [[ $REBOOT_AFTER -eq 1 ]]; then
        echo "Rebooting now..."
        # Clean up mount point before reboot
        TMP_POINT="/tmp/boot_partition"
        if [ "$BOOT_PART" = "$TMP_POINT" ];then
            umount $BOOT_PART
        fi
        reboot
    else
        echo "Boot entry set successfully. Changes will take effect on next reboot."
    fi
    # Clean up mount point
    TMP_POINT="/tmp/boot_partition"
    if [ "$BOOT_PART" = "$TMP_POINT" ];then
        umount $BOOT_PART
    fi
    echo "End OS Boot Entry Switch ..."
    exit 0
fi

##############################################################################
# scan current entry list(menu.lst or grub.cfg)
##############################################################################
# Use the new list_boot_entries function
list_boot_entries "Current disk's boot entry list:"

##############################################################################
# Handle special parameters after mounting
##############################################################################
# If --list parameter is specified, only show boot entries and exit
if [[ $LIST_ONLY -eq 1 ]]; then
    list_boot_entries
    echo "Boot entries listed successfully."
    # Clean up mount point
    TMP_POINT="/tmp/boot_partition"
    if [ "$BOOT_PART" = "$TMP_POINT" ];then
        umount $BOOT_PART
    fi
    echo "End OS Boot Entry Switch ..."
    exit 0
fi

# If --os parameter is specified, set boot entry by OS name
if [[ -n "$OS_NAME" ]]; then
    set_boot_entry_by_name "$OS_NAME"
    # If --reboot is also specified, reboot immediately
    if [[ $REBOOT_AFTER -eq 1 ]]; then
        echo "Rebooting now..."
        # Clean up mount point before reboot
        TMP_POINT="/tmp/boot_partition"
        if [ "$BOOT_PART" = "$TMP_POINT" ];then
            umount $BOOT_PART
        fi
        reboot
    else
        echo "Boot entry set successfully. Changes will take effect on next reboot."
    fi
    # Clean up mount point
    TMP_POINT="/tmp/boot_partition"
    if [ "$BOOT_PART" = "$TMP_POINT" ];then
        umount $BOOT_PART
    fi
    echo "End OS Boot Entry Switch ..."
    exit 0
fi

##############################################################################
# customer pick up the destination partition num
##############################################################################
# user already pass index number as command line args
is_args_index=0
if [  x$1 != x ];then
    is_args_index=1
fi

is_num=0
while [ $is_num -eq 0 ]
do
if [ $is_args_index -eq 1 ]; then
    is_args_index=0
    index=$1
else
    read -p "Select the next boot index:" index
fi
re='^[0-9]+$'
if [[ $index =~ $re ]]; then
    if [ "$index" -lt "${#dict[@]}" ];then
       next_boot=${dict[$index]}
       is_num=1
    else
       echo "'$index' is out of range,please check again"
    fi    
else
    echo "'$index' is not an index,please type again"
fi
done 
# confirm the selection
echo "'$next_boot' is chosen as the next boot option"
# update boot entry file(default or grubenv)
if [ $is_efi -eq 1 ];then
    if [ -e $BOOT_PART/boot/grub/grubenv ];then
        sed -i "s/=.*$/=$next_boot/" $BOOT_PART/boot/grub/grubenv
        test -d $BOOT_PART/boot/grub2 && cp $BOOT_PART/boot/grub/grubenv $BOOT_PART/boot/grub2/grubenv
    elif [ -e $BOOT_PART/boot/grub/GRUBENV ]; then
        sed -i "s/=.*$/=$next_boot/" $BOOT_PART/boot/grub/GRUBENV
        test -d $BOOT_PART/boot/grub2 && cp $BOOT_PART/boot/grub/GRUBENV $BOOT_PART/boot/grub2/GRUBENV
    fi
else
    sed -i "s/^[0-9]\{1,2\}/$next_boot/" $BOOT_PART/default
fi
echo "finish update the next boot entry"

##############################################################################
# unmount the boot partion
##############################################################################
TMP_POINT="/tmp/boot_partition"
if [ "$BOOT_PART" = "$TMP_POINT" ];then
    umount $BOOT_PART
fi

##############################################################################
# query for reboot now
##############################################################################
# user already pass index number as command line args
is_args_index=0
if [  x$2 != x ];then
    rb=$2
else
    read -p "Do you want to reboot now(default is N)?[y/n]" rb
fi
case $rb in
    [Yy]* ) 
            reboot
            ;;
    [Nn]* ) 
            echo "It will effect next boot"
            exit 0
            ;;
    * )     
            echo "It will effect next boot"
            exit 0
            ;;
esac
echo "End OS Boot Entry Switch ..."
