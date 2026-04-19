#!/bin/bash

MON="1"

# --- Enable PBP (from your dump) ---
ddcutil setvcp xA4 65535 --noverify -d $MON
ddcutil setvcp xF4 513 --noverify -d $MON
ddcutil setvcp xF5 257 --noverify -d $MON

# --- Wait for scaler to finish switching into PBP ---
sleep 5

# --- Set Window 512 to USB-C ---
ddcutil setvcp xA5 512 --noverify -d $MON
sleep 2

# 15 = DP
# 16 = HDMI-1
# 17 = HDMI-2
# 49 = USB-C
ddcutil setvcp x60 49 --noverify -d $MON

# --- Return selection back to 512 (keeps UI stable) ---
sleep 2
ddcutil setvcp xA5 512 --noverify -d $MON
