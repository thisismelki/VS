---
title: "Emacs Tutorial"
date: 2021-12-19T19:56:13-05:00
draft: false
---


# Emacs Tutorial

M-x global-tab-line-mode

CTRL-X B => switch buffer

C-x C-c == to end the Emacs session

C-g == quit a partially entered command



 C-x k, then <Return> at the prompt == stop the tutorial

 C-v (View next screen)

 M-v (View previous screen)

C-l	Clear screen and redisplay all the text,
		 moving the text around the cursor
		 to the center of the screen.

C-**p** == **Previous** line

C-**b** == **Backward** character 

C-**f** == **Forward** a character

C-**n** == **Next** line

M-**f** == **Forward** a word

M-**b** == **Backward** a word

Very often Meta characters are used for
operations related to the units defined by language (words, sentences,
paragraphs), 

Control characters operate on basic units that are
independent of what you are editing (characters, lines, etc)

C-a == move to beginning of line

C-e == move to end of the line

M-a == move to beginning of sentence

M-e == move to end of the sentence

M-< == moves to the beginning of the whole text

M-> == moves to the end of whole text

## How to repeat-count



## Alternative way 

type the digits while holding down the
META key

C-u == repeat count

### Example of repeat count

C-u 8 C-f == moves forward eight characters

numeric argument is called a prefix argument

### Another example

C-u 8 C-v == scrolls by 8 lines

C-g =="quits" + stop a command which is taking too long to execute, discard a numeric argument, 

## Disabled Commands

### Example of responding to disabled commands with Yes

C-x C-l then type <SPC>( the Space bar)

### Example of responding to disabled commands with No

C-x C-l then type "n "

# Windows

C-x 1 == expands window of the cursor to fullscreen  AKA One window (i.e., kill all other windows)

C-h k C-f

```lisp
C-h == help for emacs
k == Display the full documentation for the key sequence.
C-f == CTRL-f  
```

# INSERTING AND DELETING

C-u 8 * == inserts ********

C-d == Delete the next character the cursor

M-<DEL> == Kill the word immediately before the cursor

M-d == Kill the next word after the cursor

C-k == Kill from the cursor position to end of line

M-k == Kill to the end of the current sentence

## Kill a segment of text with one uniform method 

C-<SPC> == starts highlight

C-w == kills all the text between 2 positions

killed text == can be reinserted at any position 

Deleting text == can NOT be reinserted but you can undo

<DEL> == Deletion unless argument is given they kill text

C-d == Deletion unless argument is given they kill text

C-u 2 C-k kills two lines and their Newlines; typing C-k twice would not do that.

Killing == Cutting

Yanking == Pasting

C-y == Yanking AKA reinserts the last killed text, at the current cursor positon

M-y == replaces that yanked text with the previous kill.

If you like, you can try giving M-y postive and negative arguments.

# UNDO

C-/ == undoes the changes made by one command

C-_ == is an alternative undo command

C-x u == works exactly like C-/,

A numeric argument to C-/, C-_, C-x u acts as a repeat count.

# FILES

C-x C-f == Find a file

C-x C-s == Save the file

C-x C-w == Save as file

# Buffers

C-x C-b == List buffers

C-x b INSERT_TEXT <Return> == returns to specific buffer 

C-x s == Save some buffers

# Extending the command set

C-x == Character eXtend. Followed by one character.

M-x == Named command eXtend. Followed by a long name.

C-x C-c == End the Emacs session, offers to save each chaned file before it kills Emacs. Used prior to log out or quick edit.

C-z == exit Emac temporarily AKA suspends Emacs

In the most common shells, you can resume Emacs with the "fg" command or with "%emacs".

```lisp
C-x C-f		Find file
C-x C-s		Save file
C-x s		Save some buffers
C-x C-b		List buffers
C-x b		Switch buffer
C-x C-c		Quit Emacs
C-x 1		Delete all but one window
C-x u		Undo
```

# Example named command eXtend

## Replaces word "changed " with word "altered"

M-x repl s<Return>changed<Return>altered<Return>

# AUTOSAVE

Auto save file has a # at the beginning and the end its file is hello.c == #hello.c#

## Recover auto saved editing by finding file normally and typeing

M-x recover-this-file <Return>

# Echo Area

If Emacs sees that you are typing multicharacter commands slowly, it
shows them to you at the bottom of the screen in an area called the
"echo area".  The echo area contains the bottom line of the screen.

# Mode Line

Each major mode is the name of an extended command, which is how you can
switch to that mode.  

## For example 

 M-x fundamental-mode == is a command to switch to Fundamental mode.

M-x text-mode <Return>

 C-h m == view docs on current major mode

**Minor modes** are not alternatives to the major modes, just minor
modifications of them. Each **minor mode** can be turned on or off by
itself, independent of all other minor modes, and independent of your
major mode.  So you can use no minor modes, or one minor mode, or any
combination of several minor modes.

M-x auto-fill-mode <Return> == toggles Auto Fill mode

C-u 20 C-x f == sets fill column set to 20

```lisp
C-u == repeat count
20 == number argument
C-x f == set fill-column
```



M-q == refill the paragraph with cursor inside the paragraph

# Searching

Emacs search is incremental which means the search happens while you type in the string to search for.

C-s == start forward search

C-r == start reverse search

<Return> == terminates search at point position

<DEL> == retreats to an eariler location

# Multiple Windows

C-x 2 == splits the screen into two windows

C-M-v == scrolls the bottom window

C-x o ("o" for "other" ) == moves the cursor to the bottom window

## How to use 2 windows to display 2 different things:

C-x 4 C-f [followed by the name of a file] <Return> == Find file in other window

# Multiple Frames

C-x 5 2 == adds a new window (frame)

C-x 5 0 == removes the selected frame

# Recursive Editing Levels

<ESC><ESC><ESC> == quits recursive editing level, all-purpose get out command

Can **NOT** use C-g to get out of a recursive editing level.

You cannot use C-g to get out of a recursive editing level.  This is
because C-g is used for canceling commands and arguments WITHIN the
recursive editing level.

# Getting more help

C-h CHARACTER == "the Help character"

C-h ? == provides help assistance 

(If C-h does not display a message about help at the bottom of the
screen, try typing the F1 key or M-x help <Return> instead.)

C-h c == display brief description of command

Multi-character commands such as C-x C-s and <ESC>v (instead of M-v,
if you have no META or EDIT or ALT key) are also allowed after C-h c.

## Examples 

C-h c C-p == describes C-p command

C-h k C-p == describes C-p command

C-h k  == provies more info 

```lisp
C-h k == more info / opens the docs
C-h c == basic info
```

C-h f == Describe a function. You type in the name of the function

## Example of C-h f

C-h f previous-line <Return>

C-h v == display the documentation of variables

C-h a ==

## Example C-h a

C-h a file <Return> ==

  C-h i ==	Read included Manuals (a.k.a. Info).  This command puts
		you into a special buffer called "*info*" where you
		can read manuals for the packages installed on your system.
		Type m emacs <Return> to read the Emacs manual.
		If you have never before used Info, type h and Emacs
		will take you on a guided tour of Info mode facilities.
		Once you are through with this tutorial, you should
		consult the Emacs Info manual as your primary documentation.



C-h r == Read Emacs manual

C-x C-c == exit Emacs

# Entering Dired



C-x C-d == lists directory

C-x d == invokes dired

## Alternative to invoke dired

C-x C-f == 'find-file' a dirs name

M-n == puts the name of the visited file (if any) in the minibuffer

q == quits Dired buffer















