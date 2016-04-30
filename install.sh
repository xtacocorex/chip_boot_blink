#!/bin/bash

# CHIP Bootup Blink Installer
# Robert Wolterman (xtacocorex) 2016

# COPY FILES
cp ./boot_blink.sh /usr/bin/boot_blink.sh
cp ./chip_boot_blink.service /etc/systemd/system/chip_boot_blink.service

# ENABLE THE SERVICE
systemctl enable chip_boot_blink.service

