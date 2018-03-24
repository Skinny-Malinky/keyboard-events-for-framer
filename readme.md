# Keyboard Input for Framer

<a href='https://open.framermodules.com/Keyboard-Input-for-Framer'>
    <img alt='Install with Framer Modules'
    src='https://www.framermodules.com/assets/badge@2x.png' width='160' height='40' />
</a>

If you have any feedback, give me a shout on twitter – [@struanfraser](http://www.twitter.com/struanfraser).

This small module makes it a little nicer to use keyboard functionality in Framer. I created this as I prototype for **[YouView TV](https://www.youview.com/)** using a **[FLIRC](https://www.flirc.tv/)** for infrared input, which translates directly to keyboard input.

![A keyboard typing out the words "hello world"](images/keyboard.gif)

## Getting Started

First of all, you have to make sure `Keyboard.coffee` is in your modules folder, then you have to type –

```
keyboard = require "Keyboard"
```

– at the top of your project.

## Triggering a function with a key

I often use this to prototype recordings on our set top box. Say you want to trigger a **recording** with the **R key**.

Create a function like follows –

```
record = () ->
    print "it's recorded!"
```

Then to use the **R key** to activate the function, we need only write –

```
keyboard.onKey( keyboard.r, record() )
```

## Stopping a key from calling a function

Perhaps you no longer want the key you've previously mapped to call the same function. You can remove the key listener with the following function –

```
keyboard.offKey( keyboard.r )
```

## Throttling

As key input is constant, it will often call functions **_far_** too quickly. One solution to this is using [throttling](https://framer.com/docs/#utils.throttle). Throttling ensures that a function is only called once every x seconds.

If we want to throttle our key input, we just add it as another paramater in the function in **seconds**. As follows –

```
keyboard.onKey( keyboard.r, record(), 0.3 )
```

Now if we hold the **R button**, it will only call the `record()` function every **0.3 seconds**. If you're struggling with animations, it will often help to set your throttle to the length of your longest animation.

## Available Keys

You can use any of the following keys after you've assigned a prefix. In our example, we used `keyboard.` as a prefix. If you want to use **backspace** it would be `keyboard.backspace`.

```
backspace
tab
enter
shift
ctrl
alt

caps
escape
pageUp
pageDown

left
up
right
down
delete

zero
one
two
three
four
five
six
seven
eight
nine

a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z

numZero
numOne
numTwo
numThree
numFour
numFive
numSix
numSeven
numEight
numNine

fOne
fTwo
fThree
fFour
fFive
fSix
fSeven
fEight
fNine
fTen

semiColon
equalSign
comma
dash
period
forwardSlash
openBracket
backSlash
closeBracket
singleQuote
```

If you'd like to know more or you have any particular feature requests, get in touch – [@struanfraser](http://twitter.com/struanfraser).

## Other useful projects for TV

*   [FocusEngine](https://github.com/bpxl-labs/FocusEngine)
*   [RemoteLayer](https://github.com/bpxl-labs/RemoteLayer)
