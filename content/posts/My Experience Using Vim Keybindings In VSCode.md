---
title: "My Experience using Vim Keybindings in VSCode"
date: 2022-01-18T19:56:13-05:00
draft: false
---

# My Experience Using Vim Keybindings In VSCode

https://michaelychen.medium.com/my-experience-using-vim-keybindings-in-vscode-ea6d335aa155

## Vim VSCode Settings

A lot of these settings are the ones suggested by the extension’s home page.



```
"vim.easymotion": true,
  "vim.incsearch": true,
  "vim.useSystemClipboard": true,
  "vim.hlsearch": true,
  "vim.insertModeKeyBindings": [
    {
      "before": ["j", "j"],
      "after": ["<Esc>"]
    }
  ],
  "vim.leader": "<space>",
  "vim.handleKeys": {
    "<C-a>": false,
    "<C-f>": false
  },
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": [":"],
      "commands": ["workbench.action.showCommands"]
    }
  ],
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": [">"],
      "commands": ["editor.action.indentLines"]
    },
    {
      "before": ["<"],
      "commands": ["editor.action.outdentLines"]
    },
    {
      "before": ["p"],
      "after": ["p", "g", "v", "y"]
    }
  ],
  "vim.statusBarColorControl": true,
  "vim.statusBarColors.normal": ["#8FBCBB", "#000"],
  "vim.statusBarColors.insert": ["#BF616A", "#000"],
  "vim.statusBarColors.visual": ["#B48EAD", "#000"],
  "vim.statusBarColors.visualline": ["#B48EAD", "#000"],
  "vim.statusBarColors.visualblock": ["#A3BE8C", "#000"],
  "vim.statusBarColors.replace": "#D08770",
  "vim.statusBarColors.commandlineinprogress": "#007ACC",
  "vim.statusBarColors.searchinprogressmode": "#007ACC",
  "vim.statusBarColors.easymotionmode": "#007ACC",
  "vim.statusBarColors.easymotioninputmode": "#007ACC",
  "vim.statusBarColors.surroundinputmode": "#007ACC",
  "workbench.colorCustomizations": {
    "statusBar.background": "#B48EAD",
    "statusBar.noFolderBackground": "#B48EAD",
    "statusBar.debuggingBackground": "#B48EAD",
    "statusBar.foreground": "#000"
  }
```



I also binded the autosuggestion navigation button to `ctrl` + `hjkl` by pasting this in the keybindings.json file.

```

{
  "key": "ctrl+j",
  "command": "selectNextSuggestion",
  "when": "suggestWidgetVisible"
},
{
  "key": "ctrl+k",
  "command": "selectPrevSuggestion",
  "when": "suggestWidgetVisible"
},{
  "key": "ctrl+j",
  "command": "workbench.action.quickOpenSelectNext",
  "when": "inQuickOpen"
},
{
  "key": "ctrl+k",
  "command": "workbench.action.quickOpenSelectPrevious",
  "when": "inQuickOpen"
}





```

## Fav Commands

`ciw` to delete word and switch into `insert` mode

`cit` to delete everything between `tags` and switch into `insert` mode

`ci"` or `ci'` to delete everything inbetween quotes and switch into `insert` mode

making a change then `n` to jump to next encounter, then `.` to repeat change

`ctrl` + `v` for visual block mode, `v` visual mode, `V` visual line mode

`o` or `O` for new line, `A` insert at end of line, `I` insert at beginning

`o` or `O` for new line, `A` insert at end of line, `I` insert at beginning

`/pattern` searches for similar pattern, `n` to repeat search, `N` repeat search opposite direction