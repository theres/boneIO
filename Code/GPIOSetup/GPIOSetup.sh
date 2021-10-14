# Set BeagleBone PINS to Input and i2c
#
#
# turn off LEDs 1 – 3, only 0 will be on
# echo 0 > /sys/class/leds/beaglebone:green:usr1/brightness
# echo 0 > /sys/class/leds/beaglebone:green:usr2/brightness
# echo 0 > /sys/class/leds/beaglebone:green:usr3/brightness

# configure i2c
config-pin P9_19 i2c
config-pin P9_20 i2c

# configure P9 GPIO ports
c
config-pin p9_11 gpio
config-pin p9_12 gpio
config-pin p9_13 gpio
config-pin p9_14 gpio
config-pin p9_15 gpio
config-pin p9_16 gpio
config-pin p9_17 gpio
config-pin p9_18 gpio


config-pin p9_21 gpio
config-pin p9_22 gpio
config-pin p9_23 gpio
config-pin p9_24 gpio
config-pin p9_25 gpio
config-pin p9_26 gpio
config-pin p9_27 gpio
config-pin p9_28 gpio
config-pin p9_29 gpio
config-pin p9_30 gpio
config-pin p9_31 gpio


config-pin p9_41 gpio
config-pin p9_42 gpio


config-pin p8_03 gpio
config-pin p8_04 gpio
config-pin p8_05 gpio
config-pin p8_06 gpio
config-pin p8_07 gpio
config-pin p8_08 gpio
config-pin p8_09 gpio
config-pin p8_10 gpio
config-pin p8_11 gpio
config-pin p8_12 gpio
config-pin p8_13 gpio
config-pin p8_14 gpio
config-pin p8_15 gpio
config-pin p8_16 gpio
config-pin p8_17 gpio
config-pin p8_18 gpio
config-pin p8_19 gpio
config-pin p8_20 gpio
config-pin p8_21 gpio
config-pin p8_22 gpio
config-pin p8_23 gpio
config-pin p8_24 gpio
config-pin p8_25 gpio
config-pin p8_26 gpio
config-pin p8_27 gpio
config-pin p8_28 gpio
config-pin p8_29 gpio
config-pin p8_30 gpio
config-pin p8_31 gpio
config-pin p8_32 gpio
config-pin p8_33 gpio
config-pin p8_34 gpio
config-pin p8_35 gpio
config-pin p8_36 gpio
config-pin p8_37 gpio
config-pin p8_38 gpio
config-pin p8_39 gpio
config-pin p8_40 gpio
config-pin p8_41 gpio
config-pin p8_42 gpio
config-pin p8_43 gpio
config-pin p8_44 gpio
config-pin p8_45 gpio
config-pin p8_46 gpio


exit 0