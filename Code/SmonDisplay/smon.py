import socket
import os
import time

from luma.core.interface.serial import i2c
from luma.core.render import canvas
from luma.oled.device import sh1106
from PIL import ImageFont
import Adafruit_BBIO.GPIO as GPIO

from stats import SmonStats

def make_font(name, size):
    font_path = os.path.abspath(os.path.join(
        os.path.dirname(__file__), 'fonts', name))
    return ImageFont.truetype(font_path, size)

input_pin = 'P9_41'
GPIO.setup(input_pin, GPIO.IN, pull_up_down = GPIO.PUD_UP)
GPIO.add_event_detect(input_pin, GPIO.FALLING)

serial = i2c(port=2, address=0x3c)
device = sh1106(serial)
width = 128

# You have to copy this fonts to your font folder /usr/share/fonts/truetype
fontBig = make_font("rational-integer.regular.ttf", 35)
fontSmall = make_font("DejaVuSans.ttf", 10)

stat = SmonStats()
stat.auto_refresh_stats(2)

screen_num = 1
num_of_screens = 6

while True:
    if GPIO.event_detected(input_pin):
        if screen_num == num_of_screens:
            screen_num = 1
        else:
            screen_num += 1

    

    # screen 1 - info
    if screen_num == 1:
        with canvas(device) as draw:
            draw.text((1, 1), stat.get_stat('hostname'), font=fontBig, fill="white")
            draw.text((1, 50), 'Uptime: ' + stat.get_stat('uptime'), font=fontSmall, fill="white")

    # screen 2 - network
    elif screen_num == 2:
        with canvas(device) as draw:
            header = 'Eth0 Config'
            centerPosition = (width - draw.textsize(header)[0])/2

            draw.rectangle([0, 0, 127, 13], outline="white", fill="black")
            draw.text((centerPosition, 1), header, font=fontSmall, fill="white")
            draw.text((3, 17), 'IP: ' + stat.get_stat('ip'), font=fontSmall, fill="white")
            draw.text((3, 32), 'Mask: ' + stat.get_stat('netmask'), font=fontSmall, fill="white")
            draw.text((3, 47), 'Mac: ' + stat.get_stat('mac'), font=fontSmall, fill="white")

    # screen 3 - cpu
    elif screen_num == 3:
        with canvas(device) as draw:
            header = 'CPU Usage'
            centerPosition = (width - draw.textsize(header)[0])/2

            draw.rectangle([0, 0, 127, 13], outline="white", fill="black")
            draw.text((centerPosition, 1), header, font=fontSmall, fill="white")
            draw.text((3, 17), 'Total: ' + stat.get_stat('cpuTotal'), font=fontSmall, fill="white")
            draw.text((3, 32), 'User: ' + stat.get_stat('cpuUser'), font=fontSmall, fill="white")
            draw.text((3, 47), 'Free: ' + stat.get_stat('cpuSystem'), font=fontSmall, fill="white")

    # screen 4 - disk
    elif screen_num == 4:
        with canvas(device) as draw:
            header = 'Disk Usage'
            centerPosition = (width - draw.textsize(header)[0])/2

            draw.rectangle([0, 0, 127, 13], outline="white", fill="black")
            draw.text((centerPosition, 1), header, font=fontSmall, fill="white")
            draw.text((3, 17), 'Total: ' + stat.get_stat('diskTotal'), font=fontSmall, fill="white")
            draw.text((3, 32), 'Used: ' + stat.get_stat('diskUsed'), font=fontSmall, fill="white")
            draw.text((3, 47), 'Free: ' + stat.get_stat('diskAvailable'), font=fontSmall, fill="white")

    # screen 5 - memory
    elif screen_num == 5:
        with canvas(device) as draw:
            header = 'Memory Usage'
            centerPosition = (width - draw.textsize(header)[0])/2

            draw.rectangle([0, 0, 127, 13], outline="white", fill="black")
            draw.text((centerPosition, 1), header, font=fontSmall, fill="white")
            draw.text((3, 17), 'Total: ' + stat.get_stat('totalMemory'), font=fontSmall, fill="white")
            draw.text((3, 32), 'Used: ' + stat.get_stat('usedMemory'), font=fontSmall, fill="white")
            draw.text((3, 47), 'Free: ' + stat.get_stat('availableMemory'), font=fontSmall, fill="white")

    # screen 6 - swap
    elif screen_num == 6:
        with canvas(device) as draw:
            header = 'Swap Usage'
            centerPosition = (width - draw.textsize(header)[0])/2

            draw.rectangle([0, 0, 127, 13], outline="white", fill="black")
            draw.text((centerPosition, 1), header, font=fontSmall, fill="white")
            draw.text((3, 17), 'Total: ' + stat.get_stat('totalSwap'), font=fontSmall, fill="white")
            draw.text((3, 32), 'Used: ' + stat.get_stat('usedSwap'), font=fontSmall, fill="white")
            draw.text((3, 47), 'Free: ' + stat.get_stat('availableSwap'), font=fontSmall, fill="white")


    time.sleep(0.2)











