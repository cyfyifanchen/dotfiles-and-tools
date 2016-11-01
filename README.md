# Mac Settings

I've decided to use this Repo as a backup in case I change machine so I have something to look.

# Zsh + Tmux + Vim

Themes, look and font:

Zsh Theme: [bullet train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)

Tmux Theme: [Maglev](https://github.com/caiogondim/maglev)

Font: [Hack](http://sourcefoundry.org/hack/)

Vim Theme: [Tomrrow-Night](https://github.com/chriskempson/tomorrow-theme)

<a href="https://github.com/jaredculp/iterm2-borderless-padding">Borderless iTerm</a>

#Neovim

I have completely switched to Neovim. I have been using it full time. The following are the steps to make the transition easier.

`ctrl` + `h` is a specific Neovim issue, here is the fix:

https://github.com/christoomey/vim-tmux-navigator/issues/71

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

```
![image](https://github.com/yifanchen/dotfiles/blob/master/vim.jpg "my zsh + tmux + vim")

10/31/2016

Vim Color Scheme changed to [Vim-One](whttps://github.com/rakr/vim-one)

![image](https://github.com/yifanchen/dotfiles/blob/master/vim-one.jpg)
