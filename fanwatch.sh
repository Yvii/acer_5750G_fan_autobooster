#!/bin/bash

# Path to neduards Perl script
PERL_SCRIPT="/path/to/acer_5750G_fan_controller.pl"

# Temp thresholds (in °C)
HIGH_TEMP=84
LOW_TEMP=76

# State tracking
STATE="NORMAL"

while true; do
    # Read CPU temp using sensors
    TEMP=$(sensors | grep 'Package id 0:' | awk '{print $4}' | sed 's/+//;s/\.0//;s/[^0-9]//g')

    # Safety check
    if [[ -z "$TEMP" ]]; then
        echo "Could not read temperature"
        # 5 second sleep
        sleep 5
        continue
    fi

    # Output current TEMP and state to terminal (optional)
    echo "Temp: $TEMP°C | Fan: $STATE"

    if [[ "$STATE" == "NORMAL" && "$TEMP" -ge "$HIGH_TEMP" ]]; then
        echo "Temp too high! Boosting fan to MAX..."
        sudo perl "$PERL_SCRIPT" MAX
        STATE="MAX"
    elif [[ "$STATE" == "MAX" && "$TEMP" -le "$LOW_TEMP" ]]; then
        echo "Temp cooled down. Returning to NORMAL fan..."
        sudo perl "$PERL_SCRIPT" NORMAL
        STATE="NORMAL"
    fi

    sleep 5
done
