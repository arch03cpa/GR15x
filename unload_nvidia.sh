#!/bin/bash
# usage: sudo bash unload_nvidia.sh
# Below may need to be modified depending on what is running. 
# If last step fails to unload nvidia driver, 
# try 'sudo lsof /dev/nvidia*' to get list of references
# that are using nvidia driver. Those need to be closed also.
echo ""
echo "=========== Unloading NV Drivers for MODS Testing =========="
echo ""

# stop FM service
service nvidia-fabricmanager stop

# stop any running containers and stop docker service
service docker stop
service nvidia-docker stop

service nvidia-persistenced stop
nvidia-smi -pm 0

# unload drivers
rmmod -v nvidia_vgpu_vfio nv_peer_mem nvidia_uvm nvidia_drm nvidia_modeset nvidia
rmmod -v nouveau
echo "=== Done ==="
echo ""

