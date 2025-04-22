#!/bin/bash

# Display the current configuration of the Ethernet interface enp1s0
echo "Current configuration of enp1s0:"
ifconfig enp1s0

# Bring the Ethernet interface enp1s0 down to prepare for MAC address change
echo "Bringing enp1s0 down..."
sudo ifconfig enp1s0 down

# Randomly change the MAC address of the Ethernet interface enp1s0
echo "Changing MAC address of enp1s0..."
sudo macchanger enp1s0 -r

# Bring the Ethernet interface enp1s0 back up with the new MAC address
echo "Bringing enp1s0 up..."
sudo ifconfig enp1s0 up

# Verify the new configuration of the Ethernet interface enp1s0
echo "New configuration of enp1s0:"
ifconfig enp1s0

# Display the current configuration of the wireless interface wlp0s20f3
echo "Current configuration of wlp0s20f3:"
ifconfig wlp0s20f3

# Bring the wireless interface wlp0s20f3 down to prepare for MAC address change
echo "Bringing wlp0s20f3 down..."
sudo ifconfig wlp0s20f3 down

# Randomly change the MAC address of the wireless interface wlp0s20f3
echo "Changing MAC address of wlp0s20f3..."
sudo macchanger wlp0s20f3 -r

# Bring the wireless interface wlp0s20f3 back up with the new MAC address
echo "Bringing wlp0s20f3 up..."
sudo ifconfig wlp0s20f3 up

# Verify the new configuration of the wireless interface wlp0s20f3
echo "New configuration of wlp0s20f3:"
ifconfig wlp0s20f3

