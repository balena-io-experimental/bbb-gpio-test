#!/usr/bin/env bash


if [ -e "/sys/class/gpio/gpio60" ]; then
  echo "GPIO 60 already exported"
else
  echo "Enabling GPIO 60"
  echo 60 > /sys/class/gpio/export
fi

sleep 2
direction=$(cat /sys/class/gpio/gpio60/direction)
echo "GPIO 60 direction: $direction"

while : ; do
    echo "Idling..."
    sleep 600;
done
