# acer_5750G_fan_autobooster

This script monitors the CPU temperature on an Acer Aspire 5750G and triggers the maximum fan override when the system gets too hot.

It integrates with the original fan control idea by [neduard](https://github.com/neduard/acer_5750G_fan_maximiser) and adds automatic temperature-based activation.

# WARNING: this is software that writes values to unknown ports on your laptop. This can easily cause BRICKING of your device. You have been warned.

## Features

- Triggers full fan speed at a temperature threshold using a custom IO port write
- Returns to BIOS/normal fan control at a set temperature
- Runs in background with optional autostart
- Can be used alongside NBFC for finer fan control

## Requirements

- `perl`
- The original Perl script [neduard](https://github.com/neduard/acer_5750G_fan_maximiser/blob/master/acer_5750G_fan_controller.pl)
- `lm_sensors`
- Access to `/dev/port` (usually requires `sudo`)
- `sudo` permissions for the fan override script without password (optional but recommended)

## Setup

1. Clone this repo
2. Make the script executable:

    ```bash
    chmod +x fanwatch.sh
    ```

3. Run manually to test:

    ```bash
    ./fanwatch.sh
    ```

4. [Optional] Autostart the script on Boot 




