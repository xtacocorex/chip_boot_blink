# chip_boot_blink
Blinks the status LED on the CHIP on Bootup

Install:
git clone https://github.com/xtacocorex/chip_boot_blink.git
cd chip_boot_blink
sudo ./install.sh

The service will run on boot at the getty.target level, so users will know when the uart console is available to use.

Wait a bit after this for the ability to ssh into the CHIP

