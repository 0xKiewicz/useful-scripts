#!/usr/bin/env python3
# Generate badchars for BoF fuzzing
# @_Kiewicz

bchars = '0123456789abcdef'

for i in bchars:
    for j in bchars:
        print('\\x' + i + j, end='')

# Just print a new line at the end
print()
