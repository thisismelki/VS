---
title: "Boost Your Coding Fu with Visual Studio Code & Vim"
date: 2022-01-18T19:56:13-05:00
draft: false
---

# Boost Your Coding Fu With Visual Studio Code and Vim

https://www.barbarianmeetscoding.com/blog/boost-your-coding-fu-with-vscode-and-vim

### Mapping Your Caps Lock Key to Control

One thing that comes super handy when using Vim (and any other editor  for that matter) is to remap your *Caps Lock* Key to *Control*. This  means that you can easily reach a super commonly used key such as  *Control* from the comfort of the home row.

If you're using a Mac you can do this directly from Preferences,  Keyboard. Otherwise you may need to install some software in your  development machine but it should be very straightforward. Google be thy friend. Google it.

Use **`e`** to jump to the end of a word (and `ge` to do it backward)

A word in Vim only includes letters, digits and numbers. If you want to consider special characters like `.`, `(`, `{`, etc as part of a word (called WORD in Vim jargon) you can use the capitalized equivalents of the keys above (`W`, `B`, `E`, `gE`)

### Move Horizontally Extremely

To **move extremely horizontally** use:

**`0`**: Moves to the **first character of a line**

**`^`**: Moves to the **first non-blank character of a line**

**`$`**: Moves to the **end of a line**

**`g_`**: Moves to the **non-blank character at the end of a line**

### To Move Vertically

Starting from `k` and `j`, we move on to a **faster way of maneuvering vertically** with:

- **`}`** **jumps entire paragraphs downwards**
- **`{`** similarly but **upwards**
- **`CTRL-D`** let’s you **move down half a page**
- **`CTRL-U`** let’s you **move up half a page**

### High Precision Vertical Motions With Search Pattern

To **move vertically even faster** when you have a target in mind, your best option is to **search** with the `/{pattern}` and `?{pattern}` commands:

- Use `/{pattern}` to **search forward** inside a file
- Use `?{pattern}` to **search backwards**

**You can think of `n` as repeating a search**.



At any time, you can type `/<Enter>` or `?<Enter>` to run the last search (forwards or backwards). 

Use `*` to do a search for the word under the cursor.



### Moving Semantically

- Use `gd` to jump to definition of whatever is under your cursor

- Use `gf` to jump to a file in an import

  ### And Some More Nifty Core Motions

  - `gg` to go to the top of the file
  - `{line}gg` to go to a specific line
  - `G` to go to the end of the file
  - `%` jump to matching `({[]})`

## Editing Like Magic With Vim Operators

One of such commands is **delete** triggered via the `d` key:

- `d5j` deletes 5 lines down
- `df'` deletes everything in the current line until the first occurrence of the `'` character (including the character)
- `dt'` would do like above but excluding the character (so up until just before)
- `d/hello` deletes everything until the first occurrence of `hello`
- `ggdG` deletes a complete document

Other useful operators are:

- `c` **c**hange. This is the most useful operator. It deletes and sends you into insert mode so that you can type
- `y` **y**ank or copy in Vim jargon
- `p` **p**ut or paste in Vim jargon
- `g~` to toggle caps

`d` deletes a whole 

`cc` changes a whole line

**Capitalize an operator to make it operate from the cursor to the end of a line**:

 `D` deletes from the cursor to the end of the line,

 `C` changes to the end of a line, etc.

### Editing Up a Notch With Text Objects

`w` for word

`s` for sentence

`p` for paragraph

`b` for block surrounded by `(`

`t` for tag

`B` for block surrounded by `{`



- `daw` to **d**elete **a** **w**ord (plus trailing whitespace)
- `ciw` to **c**hange **i**nner **w**ord
- `das` to **d**elete **a** **s**entence (`dis` delete inner sentence)
- `da"` to delete something in double quotes including the quotes
- `ci"` to change something inside double quotes
- `dap` to delete a paragraph
- `dab` `da(` or `da)` to delete a block surrounded by `(`
- `daB` `da{` or `da}` to delete a block surrounded by `{`
- `dat` to delete an HTML tag
- `cit` to change the contents of an HTML tag

### Repeating The Last Change with The Dot Operator

The `.` command works great in combination with the repeat search commands (`;`, `,`, `n` or `N`).

Imagine that you want to delete all occurrences of `cucumber`. An alternative[^3] would be to search for cucumber `/cucumber` then delete it with `daw`. From then on you can use `n` to go to the next match and `.` to delete it! Two keystrokes!?! Again think of the possibilities!!

## Inserting Text a la Vim

There’s two core commands that put you into insert mode:

 `i` for **i**nsert and `a` for **a**ppend.

The `i` insert command puts you in insert mode **before** the cursor.

While the `a` append command puts you in insert mode **after** the cursor

`I` puts you in insert mode at the beginning of the current line

`A` puts you in insert mode at the end.

`gi` puts you into insert mode at  the last place you left insert mode. This is great if you drop of insert mode by mistake and want to go back where you were and continue typing.



`C-h` lets you delete the last character you typed

`C-w` lets you delete the last word you typed

`C-u` lets you delete the last line you typed

### exit insert mode

There are three ways to do it: `<ESC>`, `C-[` and `C-C`. 

Of all of this, the easier to type is `C-C`.

## Selecting Text in Visual Mode

- `v` for visual mode **character-wise**. When you move around you go selecting character by character
- `V` for visual mode **line-wise**. When you move around you go selecting line by line
- `<C-V>` for visual mode **block-wise**. When you move around yo go selecting rectangular blocks of text

In visual mode you select the text first and **then** you type the operator



## Splits, Tabs and Switching Between Them

VSCodeVim offers an OK support for this Vim feature.

### Splits

Use the `:sp {nameoffile}` command to open a horizontal **sp**lit

Use the `:vsp {nameoffile}` command to open a **v**ertical **split**

You can move between them with `<C-W>` + `hjkl`.



### Tabs

- Use `:tabnew {file}` to open a file in a new tab
- Use `:tabn` to go to the **n**ext tab
- Use `:tabp` to go to the **p**revious tab

## Surrounding Things With Vim Surround

`ysaptli>` to surround a paragraph with an `<li>` **t**ag (`ys{motion}{char}`)

## Moving Even Faster with vim-sneak and vim-EasyMotion

[Vim-sneak](https://github.com/justinmk/vim-sneak) and [vim-EasyMotion](https://github.com/easymotion/vim-easymotion) are a couple of Vim plugins that overcharge how you move in Vim. Both  of these plugins need to be enabled via your VSCodeVim preferences.