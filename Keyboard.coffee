# Keys
exports.backspace = 8
exports.tab = 9
exports.enter = 13
exports.shift = 16
exports.ctrl = 17
exports.alt = 18

exports.caps = 20
exports.escape = 27
exports.pageUp = 33
exports.pageDown = 34

exports.left = 37
exports.up = 38
exports.right = 39
exports.down = 40
exports.delete = 46

exports.zero = 48
exports.one = 49
exports.two = 50
exports.three = 51
exports.four = 52
exports.five = 53
exports.six = 54
exports.seven = 55
exports.eight = 56
exports.nine = 57

exports.a = 65
exports.b = 66
exports.c = 67
exports.d = 68
exports.e = 69
exports.f = 70
exports.g = 71
exports.h = 72
exports.i = 73
exports.j = 74
exports.k = 75
exports.l = 76
exports.m = 77
exports.n = 78
exports.o = 79
exports.p = 80
exports.q = 81
exports.r = 82
exports.s = 83
exports.t = 84
exports.u = 85
exports.v = 86
exports.w = 87
exports.x = 88
exports.y = 89
exports.z = 90

exports.numZero = 96
exports.numOne = 97
exports.numTwo = 98
exports.numThree = 99
exports.numFour = 100
exports.numFive = 101
exports.numSix = 102
exports.numSeven = 103
exports.numEight = 104
exports.numNine = 105

exports.fOne = 112
exports.fTwo = 113
exports.fThree = 114
exports.fFour = 115
exports.fFive = 116
exports.fSix = 117
exports.fSeven = 118
exports.fEight = 119
exports.fNine = 120
exports.fTen = 121

exports.semiColon = 186
exports.equalSign = 187
exports.comma = 188
exports.dash = 189
exports.period = 190
exports.forwardSlash = 191
exports.openBracket = 219
exports.backSlash = 220
exports.closeBracket = 221
exports.singleQuote = 222

keyMap = {}

exports.onKey = (key, handler, throttleTime) ->
    keyMap[key] = Utils.throttle throttleTime, handler

exports.offKey = (key) ->
    delete keyMap[key]

window.addEventListener 'keydown', (event) ->
    event.preventDefault()
    handler = keyMap[event.keyCode]
    if (handler)
        handler()