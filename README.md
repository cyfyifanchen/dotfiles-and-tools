# Introduction

Having the right set of tools makes work not work!

# Dotfiles

![image](./images/vim.jpg)

10/31/2016

Vim Color Scheme changed to [Vim-One](https://github.com/rakr/vim-one)

![image](./images/vim-one.jpg)

## Zsh + Tmux + Vim

| Client           | Themes                                                                     | Fonts                                  | Colors      |
| ---------------- | -------------------------------------------------------------------------- | -------------------------------------- | ----------- |
| Neovim           | [Vim-One](https://github.com/rakr/vim-one)                                 | [Hack](http://sourcefoundry.org/hack/) | #           |
| Tmux             | [Maglev](https://github.com/caiogondim/maglev)                             | Hack                                   | #           |
| Zsh              | [Bullet Train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme) | #                                      | #           |
| Borderless iTerm | [Spacegray Eighties](https://github.com/mbadolato/iTerm2-Color-Schemes)    | #                                      | BG: #282c34 |

## Borderless iTerm

    ./install.sh 30 30
    ./install.sh 25 25

Padding feature gets implemented into iTerm2 nightly build 3.1.

## Neovim

Neovim is faster than Vim, that's why I use Neovim.

`ctrl` + `h` is a specific Neovim issue, here is the fix:

https://github.com/christoomey/vim-tmux-navigator/issues/71

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

```

## Enable macOS system key repeats

```bash
$ defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
$ defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
$ defaults write com.vscodium ApplePressAndHoldEnabled -bool false                      # For VS Codium
$ defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
$ defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default
```

## Blog post about Neovim color

I've written a [blog post](https://www.cyfyifanchen.com/blog/neovim-true-color) on how to change the Neovim color and making it look amazing a long time ago, apparently the analytics shows that this page get hit at least 10 times per a day, so feeling pretty happy about it. Take a look if you want.:)

# Tools

A set of tools I use daily.

### System Keymapper: karabiner-element

https://karabiner-elements.pqrs.org/

It was, it is, and it will always be the first thing I download on a new machine, making HJKL system-wide available, it's pure magic.

Not only does [ tekezo ](https://github.com/tekezo) make an awesome software for free, but [ tekezo ](https://github.com/tekezo) also keeps it up-to-date with every macOS release, this kinda dedication is phenomenal.

### Editor: Neovim

https://neovim.io/

Vimmer, That's who I am, that's who I will always be.

### Copy and Paste: Pastebot

https://tapbots.com/pastebot/

The universal clipboard is simply a must-have, screenshots and gif can also be put into the clipboard, long history saved, one license across multiple machines, altho it isn't free, but is worth every penny.

### Gif Recorder: Kap

https://github.com/wulkano/Kap

Free and high quality, thinking about contribute to it.

### IDE: VSCode with VSvim

This combination needs NO introduction.

### Terminal: Tabby

https://github.com/Eugeny/tabby

This is by far the most comfortable and modern Terminal Simulator I've ever used.

### Screenshot: Snipaste

https://www.snipaste.com

Free and edit all in one, what's the reason not like it?

### Browser: Arc

https://arc.net

It cures my tab syndrome.

### Git: Github Desktop Client

https://desktop.github.com

When the code is ready to commit, switching out from editor, using a different client often fresh my mind a lot. That's why I've been using it.

### Spotlight: Raycast

https://www.raycast.com

Well, I don't understand why native Spotlight Search doesn't feel smart at all, it can't even open Finder by typing, it drove me nuts all the time.

Raycast, is a great replacement, the window management is something macOS lacks, it's great to have. The command is built for developers I think. It reminds me of Chrome Site Search, once it's configed, it'd be super powerful and productive.

But some advanced features need to be unlocked by PRO, that's fine I understand. But integration with Google Translate, c'mon this doesn't have to be a PRO feature.
