---
title: "Vim Tutor "
date: 2022-01-04T19:56:13-05:00
draft: false
---
# Vim Tutor



​         h (left)       j (down)       k (up)       l (right)

j == down

h == left

k == up

l == right

:q! == exit editor, DISCARD CHANGES

 ** Press  x  to delete the character under the cursor. ** 

​                        ** Press  i  to insert text. **

​                        ** Press  A  to append text. **

​                    ** Use  :wq  to save a file and exit. **

# Lesson 2.1: DELETION COMMANDS

​                       ** Type  dw  to delete a word. **

​           ** Type  d$  to delete to the end of the line. **



```bash
d   number   motion
d      - is the delete operator.
motion - is what the operator will operate on (listed below).

  A short list of motions:
    w - until the start of the next word, EXCLUDING its first character.
    e - to the end of the current word, INCLUDING the last character.
    $ - to the end of the line, INCLUDING the last character.
```

2w  to move the cursor two words forward.

3e  to move the cursor to the end of the third word forward.

0  (zero) to move to the start of the line.

Type  d2w  to delete the two UPPER CASE words.

 ** Type  dd   to delete a whole line. **Other 

Type   2dd   to delete two lines.

#                          Lesson 2.7: THE UNDO COMMAND



   ** Press  u  to undo the last commands,   U  to fix a whole line. **

capital  U  to return the line to its original state.

type CTRL-R (keeping CTRL key pressed while hitting R) a few times
     to redo the commands 

#                                Lesson 2 SUMMARY

  1. To delete from the cursor up to the next word type:    dw
  2. To delete from the cursor to the end of a line type:    d$
  3. To delete a whole line type:    dd

  4. To repeat a motion prepend it with a number:   2w
  5. The format for a change command is:
               operator   [number]   motion
     where:
       operator - is what to do, such as  d  for delete
       [number] - is an optional count to repeat the motion
       motion   - moves over the text to operate on, such as  w (word),
                  $ (to the end of line), etc.

  6. To move to the start of the line use a zero:  0

  7. To undo previous actions, type:           u  (lowercase u)
     To undo all the changes on a line, type:  U  (capital U)
     To undo the undo's, type:                 CTRL-R

#                          Lesson 3.1: THE PUT COMMAND

Type  dd  to delete the line and store it in a Vim register.

Type   p   to put the line below the cursor.

#                        Lesson 3.2: THE REPLACE COMMAND

​       ** Type  rx  to replace the character at the cursor with  x . **



# Lesson 3.3: THE CHANGE OPERATOR

​           ** To change until the end of a word, type  ce . **

Type  ce  and the correct word (in this case, type  ine ).



Notice that  ce  deletes the word and places you in Insert mode.
             cc  does the same for the whole line.

# Lesson 3.4: MORE CHANGES USING c

                       Lesson 3.4: MORE CHANGES USING c


     ** The change operator is used with the same motions as delete. **

  1. The change operator works in the same way as delete.  The format is:

         c    [number]   motion

  2. The motions are the same, such as   w (word) and  $ (end of line).

  3. Move the cursor to the first line below marked --->.

  4. Move the cursor to the first error.

  5. Type  c$  and type the rest of the line like the second and press <ESC>.

NOTE:  You can use the Backspace key to correct mistakes while typing.

# Lesson 3 SUMMARY

To put back text that has just been deleted, type   p .  This puts the
     deleted text AFTER the cursor

# Lesson 4.1: CURSOR LOCATION AND FILE STATUS

  ** Type CTRL-G to show your location in the file and the file status.
     Type  G  to move to a line in the file. **

Press  G  to move you to the bottom of the file.

Type  gg  to move you to the start of the file.

Type the number of the line you were on and then  G

#                         Lesson 4.2: THE SEARCH COMMAND



​     ** Type  /  followed by a phrase to search for the phrase. **

To search for the same phrase again, simply type  n .

To search for the same phrase in the opposite direction, type  N .

To search for a phrase in the backward direction, use  ?  instead of  / .

To go back to where you came from press  CTRL-o  (Keep Ctrl down while
     pressing the letter o).  Repeat to go back further.  

CTRL-i goes forward.

# Lesson 4.3: MATCHING PARENTHESES SEARCH

​               Type  %  to find a matching ),], or } . 

# Lesson 4.4: THE SUBSTITUTE COMMAND

Type  :s/old/new/g  to substitute 'new' for 'old'.

Type  :s/thee/the <ENTER>  .  Note that this command only changes the
     first occurrence of "thee" in the line.

```
:s/thee/the


```

Now type  :s/thee/the/g .  Adding the  g  flag means to substitute
     globally in the line, change all occurrences of "thee" in the line.



To change every occurrence of a character string between two lines,
     type   :#,#s/old/new/g    where #,# are the line numbers of the range
                               of lines where the substitution is to be done.
     Type   :%s/old/new/g      to change every occurrence in the whole file.
     Type   :%s/old/new/gc     to find every occurrence in the whole file,
                               with a prompt whether to substitute or not.

# Lesson 4 SUMMARY



1. **CTRL-G**  displays your location in the file and the file status.
             **G**  moves to the end of the file.
     **number  G**  moves to that line number.
            gg  moves to the first line.

  2. Typing  /  followed by a phrase searches FORWARD for the phrase.
     Typing  ?  followed by a phrase searches BACKWARD for the phrase.
     After a search type  n  to find the next occurrence in the same direction
     or  N  to search in the opposite direction.
     CTRL-O takes you back to older positions, CTRL-I to newer positions.

  3. Typing  %  while the cursor is on a (,),[,],{, or } goes to its match.

  4. To substitute new for the first old in a line type    :s/old/new
     To substitute new for all 'old's on a line type       :s/old/new/g
     To substitute phrases between two line #'s type       :#,#s/old/new/g
     To substitute all occurrences in the file type        :%s/old/new/g
     To ask for confirmation each time add 'c'             :%s/old/new/gc

# Lesson 5.1: HOW TO EXECUTE AN EXTERNAL COMMAND

Type  :!  followed by an external command to execute that command.

As an example type   ls   following the ! and then hit <ENTER>.



# Lesson 5.2: MORE ON WRITING FILES



** To save the changes made to the text, type  :w FILENAME  **

# Lesson 5.3: SELECTING TEXT TO WRITE

** To save part of the file, type  v  motion  :w FILENAME **

type v ==  Visual selection

d  deletes the text.

# Lesson 5.4: RETRIEVING AND MERGING FILES

** To insert the contents of a file, type  :r FILENAME  **

You can also read the output of an external command.  For example,
       :r !ls  reads the output of the ls command and puts it below the
       cursor.

# Lesson 5 SUMMARY

  1. :!command  executes an external command.

     Some useful examples are:
        (Windows)       :!dir  :!del FILENAME

       (Unix)  :!ls            -  shows a directory listing.
            :!rm FILENAME   -  removes file FILENAME.

  2.  :w FILENAME  writes the current Vim file to disk with name FILENAME.

  3.  v  motion  :w FILENAME  saves the Visually selected lines in file
      FILENAME.

  4.  :r FILENAME  retrieves disk file FILENAME and puts it below the
      cursor position.

  5.  :r !dir  reads the output of the dir command and puts it below the
      cursor position.

# Lesson 6.1: THE OPEN COMMAND

 ** Type  o  to open a line below the cursor and place you in Insert mode. **

Type the lowercase letter  o  to open up a line BELOW the cursor

 open up a line ABOVE the cursor, simply type a capital  O

# Lesson 6.2: THE APPEND COMMAND

Press  e to advance through the end of each word.  

Type  a  to insert text AFTER the cursor.

NOTE:  a, i and A all go to the same Insert mode, the only difference is where
       the characters are inserted.

# Lesson 6.3: ANOTHER WAY TO REPLACE

Type a capital  R  to replace more than one character.

NOTE:  Replace mode is like Insert mode, but every typed character deletes an
       existing character.

# Lesson 6.4: COPY AND PASTE TEXT

Use the  y  operator to copy text and  p  to paste it

yw  yanks one word

yy  yanks the whole line

then  p  puts that line.

# Lesson 6.5: SET OPTION

Set an option so a search or substitute ignores case

:set ic == Ignore case

Set the 'hlsearch' and 'incsearch' options:  :set hls is

Set the 'ic' (**Ignore case**) option by entering:   :set ic

To **disable ignoring case** enter:  :set noic

NOTE:  To remove the highlighting of matches enter:   :nohlsearch
NOTE:  If you want to ignore case for just one search command, use  \c
       in the phrase:  /ignore\c <ENTER>

# Lesson 6 SUMMARY 

  1. Type  o  to open a line BELOW the cursor and start Insert mode.
     Type  O  to open a line ABOVE the cursor.

  2. Type  a  to insert text AFTER the cursor.
     Type  A  to insert text after the end of the line.

  3. The  e  command moves to the end of a word.

  4. The  y  operator yanks (copies) text,  p  puts (pastes) it.

  5. Typing a capital  R  enters Replace mode until  <ESC>  is pressed.

  6. Typing ":set xxx" sets the option "xxx".  Some options are:
        'ic' 'ignorecase'       ignore upper/lower case when searching
        'is' 'incsearch'        show partial matches for a search phrase
        'hls' 'hlsearch'        highlight all matching phrases
     You can either use the long or the short option name.

  7. Prepend "no" to switch an option off:   :set noic

# Lesson 7.1: GETTING HELP

Vim has a comprehensive on-line help system.  To get started, try one of
  these three:
        - press the <HELP> key (if you have one)
                - press the <F1> key (if you have one)
                - type   :help <ENTER>

Type  CTRL-W CTRL-W   to jump from one window to another.

  You can find help on just about any subject, by giving an argument to the
  ":help" command.  Try these (don't forget pressing <ENTER>):

        :help w
        :help c_CTRL-D
        :help insert-index
        :help user-manual

# Lesson 7.2: CREATE A STARTUP SCRIPT

                          ** Enable Vim features **

  Vim has many more features than Vi, but most of them are disabled by
  default.  To start using more features you have to create a "vimrc" file.

  1. Start editing the "vimrc" file.  This depends on your system:
        **:e ~/.vimrc**             for Unix
        :e $VIM/_vimrc          for Windows

  2. Now read the example "vimrc" file contents:
        **:r $VIMRUNTIME/vimrc_example.vim**

  3. Write the file with:
        **:w**

  The next time you start Vim it will use syntax highlighting.
  You can add all your preferred settings to this "vimrc" file.
  For more information type  **:help vimrc-intro**

# Lesson 7 SUMMARY

  1. Type  :help  or press <F1> or <HELP>  to open a help window.

  2. Type  :help cmd  to find help on  cmd .

  3. Type  CTRL-W CTRL-W  to jump to another window.

  4. Type  :q  to close the help window.

  5. Create a vimrc startup script to keep your preferred settings.

  6. When typing a  :  command, press CTRL-D to see possible completions.
     Press <TAB> to use one completion.



Read the user
  manual next: "**:help user-manual**".

  For further reading and studying, this book is recommended:
        Vim - Vi Improved - by Steve Oualline
        Publisher: New Riders

  See http://iccf-holland.org/click5.html

  This book is older and more about Vi than Vim, but also recommended:
        Learning the Vi Editor - by Linda Lamb
        Publisher: O'Reilly & Associates Inc.



























change color schme to elflord

```bash
:colorscheme elflord 
```

