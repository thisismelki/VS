# Section 2 Vim Quickstart

i = Insert Mode

# Section 1 - Essential Navigation Commands

CTRL-f - moves forward 1 page down 
CTRL-b - moves backward 1 page up

z-Enter - reposition screen to cursor

w - move by word
b - move back by a word

W - ignores punctuation
B - ignores punctuation
0 - to start of the line
^ - first character of line
$ - end of the line

2 gg - go to line 2
2 G - go to line 2

gg - first line of the file
G - last line of the file

:11 - go to line 11

:$ - end of the file
CTRL-g - file status

g-ctrl-g - more file info
:set ruler - show line and column number on the right hand area of screen
:set noruler - turn off ruler
:set ruler! - toggles the ruler

# Section 3 Deleting Text and "Thinking in Vim"
x - delete character at cursor position.
X - deletes right before /left of cursor.
dw - delete word

D



operation{motion}
dw
d = The delete operation
w = The word motion

dl - delete right
dh - Upper case X
dk - delete

dd - delete current entire line
3dd - delete 3 lines

# [count] operation {motion}
5dw
5 = The count / how many times to repeat.
dw = The command (delete word).

# [count] operation [count] {motion}
3w = Repeat word motion 3 times.
d3w = Delete the 3w motion
2d3w = Delete the 3w motion 2 times.


. = repeat previous command.

:w - write



You can use d$, or an even shorter version of the command D. which deletes to the end

# Getting Help















ci" - change inside "[quotes]























