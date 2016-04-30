#!/bin/bash

# CHIP Bootup Blink Program
# Robert Wolterman (xtacocorex) 2016
# Notifies users that the CHIP is booted an able to be used

blink() {
    case $@ in
        off)
        sudo i2cset -f -y 0 0x34 0x93 0x0
        shift
        ;;
        on)
        sudo i2cset -f -y 0 0x34 0x93 0x1
        shift
        ;;
    esac
}

COUNTER=0
while [  $COUNTER -lt 10 ]; do
    blink off
    sleep 0.25
    blink on
    sleep 0.25 
    let COUNTER=COUNTER+1
done

