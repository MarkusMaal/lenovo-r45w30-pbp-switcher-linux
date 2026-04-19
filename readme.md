# Lenovo R45w-30 PBP Switcher (Linux port)

Ported by: MarkusMaal
Contributors: piotr.kijowski  
Tags: monitor, pbp, ddcci, displayport, hdmi, automation, ultrawide  
Requires: Linux
Requires Software: ddcutil
Stable tag: 1.0.0  
License: GPLv3 or later  
License URI: https://www.gnu.org/licenses/gpl-3.0.html

*Quickly toggle Picture-by-Picture (PBP) mode on the Lenovo R45w-30 ultrawide monitor using DDC/CI commands and simple automation scripts.*

## Description 

Lenovo R45w-30 PBP Switcher provides a simple way to control **Picture-by-Picture mode** on the Lenovo R45w-30 monitor without navigating the monitor’s on-screen display (OSD).

The scripts send **VESA DDC/CI commands** directly to the monitor using the ddcutil utility.

This allows instant switching between:

- Single DisplayPort input
- PBP mode with HDMI on the left and DisplayPort on the right

The scripts can be triggered via:

- Keyboard shortcuts
- Stream Deck buttons
- Automation tools
- Any application capable of launching `.bat` files

This effectively turns the monitor into a **programmable layout switcher**.

## Features

- Enable **PBP mode (HDMI left / DP right)**
- Return to **single DisplayPort input**
- Works with keyboard shortcuts
- Works with Stream Deck
- Uses lightweight ControlMyMonitor utility
- No Lenovo software required
- Instant switching between monitor layouts

## Requirements

- Linux
- Lenovo R45w-30 monitor
- DDC/CI enabled in monitor settings
- ddcutil utility

## Installation

1. Download this repository.
2. Install **ddcutil** from your distro's repository
3. Ensure **DDC/CI is enabled** in the monitor’s OSD settings.
4. Run the scripts manually or bind them to shortcuts.


Example folder layout:
```
MonitorHotkeys
├── R45w_PBP_HDMI1_left_DP_right.sh
└── R45w_Single_DP.sh
```

## Usage

Run one of the scripts depending on the desired monitor layout.

### Enable PBP Mode (HDMI Left / DP Right) - `R45w_PBP_HDMI1_left_DP_right.sh`

This script:

- Enables multi-picture mode
- Waits for the monitor scaler to switch layouts
- Assigns HDMI1 to the active window


### Disable PBP and Return to DisplayPort - `R45w_Single_DP.sh`

This script disables PBP and restores a single DisplayPort input.


## Notes 

- The monitor requires 1–2 seconds to reconfigure its internal scaler when switching layouts.
- Delays in the scripts ensure reliable switching.
- Color presets may differ between PBP and single-input modes depending on monitor picture settings.

## FAQ 


- Does this work with other Lenovo monitors?

Possibly, but the VCP registers used here were discovered specifically for the Lenovo R45w-30.

- Why does the script include delays? 
The monitor scaler requires a short period to apply multi-picture configuration changes.

- Can I trigger this from automation tools? 
Yes. Any tool capable of launching `.sh` files can trigger these scripts.

## Changelog

### 1.0.0 - Initial release.

- PBP enable script (HDMI left / DP right)
- Single DisplayPort restore script
- Keyboard shortcut and Stream Deck support

## License 

This project is licensed under the [GPL v3](https://www.gnu.org/licenses/gpl-3.0.html) or later.

## Disclaimer 

This project is a personal hobby / educational project created primarily for my own use.

It was developed as a workaround for the current Lenovo monitor software, which does not provide a way to assign custom keyboard shortcuts for controlling Picture-by-Picture (PBP) modes on the Lenovo R45w-30.

The scripts included in this repository interact directly with the monitor using DDC/CI commands through the ControlMyMonitor utility. Some of the commands used rely on undocumented or vendor-specific monitor registers discovered through experimentation.

As a result:

- This project is **not affiliated with or endorsed by Lenovo**.
- It may **not work on other monitors or firmware versions**.
- Future monitor firmware updates could change or break the behavior.
- Use of these scripts is **entirely at your own risk**.

These scripts are provided **as-is**, without warranty of any kind.  
Always test carefully and ensure that DDC/CI control is enabled on your monitor before use.