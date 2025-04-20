# acer_5750G_fan_autobooster

This script monitors the CPU temperature on an Acer Aspire 5750G and triggers the maximum fan override when the system gets too hot.

It integrates with the original fan control idea by [neduard](https://github.com/neduard/acer_5750G_fan_maximiser) and adds automatic temperature-based activation.

**WARNING:** this is software that writes values to unknown ports on your laptop. This can easily cause BRICKING of your device. The script has only been tested for the Acer Aspire 5750G. Use at your own risk. You have been warned.

## Features

- Triggers full fan speed at a temperature threshold using a custom IO port write
- Returns to BIOS/normal fan control at a set temperature
- Runs in background with optional autostart
- Can be used alongside NBFC for finer fan control

## Requirements

- `perl`
- The original Perl script by [neduard](https://github.com/neduard/acer_5750G_fan_maximiser/blob/master/acer_5750G_fan_controller.pl)
- `lm_sensors`
- Access to `/dev/port` (usually requires `sudo`)
- `sudo` permissions for the fan override script without password (optional but recommended)

## Setup

1. Download the Shell script (Press `Download raw File`) (https://github.com/Yvii/acer_5750G_fan_autobooster/blob/main/fanwatch.sh)
2. Download the original Perl fan control script from neduard’s repo: (https://github.com/neduard/acer_5750G_fan_maximiser/blob/master/acer_5750G_fan_controller.pl)
3. Edit the fanwatch.sh script and update the path to the Perl script.
4. Make the script executable:

    ```bash
    chmod +x fanwatch.sh
    ```

5. Run manually to test:

    ```bash
    ./fanwatch.sh
    ```

6. [Optional] Autostart the script on Boot




