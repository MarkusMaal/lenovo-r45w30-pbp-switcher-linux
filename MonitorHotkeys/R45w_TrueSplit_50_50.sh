#!/bin/bash

MON="1"

# --- Switch display to 50:50 mode ---
ddcutil setvcp xF0 512 --noverify -d $MON
ddcutil setvcp xF4 513 --noverify -d $MON
ddcutil setvcp xF5 257 --noverify -d $MON

# --- Give time for scaler to settly ---
sleep 3

# --- Enable TrueSplit ---
ddcutil setvcp xF7 1 --noverify -d $MON
