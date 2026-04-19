#!/bin/bash

MON="1"

# --- Disable PBP / multi-picture (restore single-DP values) ---
ddcutil setvcp xF5 0 --noverify -d $MON
ddcutil setvcp xF4 0 --noverify -d $MON
ddcutil setvcp xA4 0 --noverify -d $MON

# --- Give scaler a moment to collapse back to single mode ---
sleep 4

# --- Reset window select (single dump uses A5=0) ---
ddcutil setvcp xA5 0 --noverify -d $MON
sleep 2

# --- Set input to DisplayPort (15) ---
ddcutil setvcp x60 15 --noverify -d $MON
