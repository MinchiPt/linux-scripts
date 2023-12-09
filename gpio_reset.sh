import RPi.GPIO as GPIO

# Use the pin number as on the board
GPIO.setmode(GPIO.BOARD)

# Pin number which you have used for backlight
backlight_pin = 18

# Set up the pin as output
GPIO.setup(backlight_pin, GPIO.OUT)

# Set the backlight pin to low (0V), turning the backlight off
GPIO.output(backlight_pin, GPIO.LOW)

# Clean up after yourself if the script is exiting
# GPIO.cleanup()