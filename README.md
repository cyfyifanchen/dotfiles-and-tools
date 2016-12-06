# Mac Settings

Using this Repo as a backup in case I change machine so I have something to look.

# Zsh + Tmux + Vim

| Client | Themes                                                                     | Fonts                                   | Colors      |
|--------|----------------------------------------------------------------------------|-----------------------------------------|-------------|
| Neovim | [Vim-One](https://github.com/rakr/vim-one)                                 | [Hack](http://sourcefoundry.org/hack/)  | #           |
| Tmux   | [Maglev](https://github.com/caiogondim/maglev)                             | Hack                                    | #           |
| Zsh    | [Bullet Train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme) | #                                       | #           |
| Borderless iTerm  | [Spacegray Eighties](https://github.com/mbadolato/iTerm2-Color-Schemes)    | #                                       | BG: #282c34 |

# Borderless iTerm

    ./install.sh 30 30

# Neovim

I have completely switched to Neovim full time. I have been using it full time. The following are the steps to make the transition easier.

`ctrl` + `h` is a specific Neovim issue, here is the fix:

https://github.com/christoomey/vim-tmux-navigator/issues/71

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

```
![image](https://github.com/yifanchen/dotfiles/blob/master/vim.jpg "my zsh + tmux + vim")

10/31/2016

Vim Color Scheme changed to [Vim-One](https://github.com/rakr/vim-one)

![image](https://github.com/yifanchen/dotfiles/blob/master/vim-one.jpg)
