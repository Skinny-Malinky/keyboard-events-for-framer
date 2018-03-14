# Extra
sound = new Audio("sounds/Success2.m4a")

# Make sure the keyboard module is in the modules folder
keyboard = require "Keyboard"

# Create a function we want to call
doThing = () ->
	print "You pressed it!"
	sound.play()

# This is the key, the function you'd like to call, then the throttling of the key.
keyboard.onKey( keyboard.shift, doThing, 0.3 )

# To remove this listener simply use –
# keyboard.offKey(keyboard.shift)