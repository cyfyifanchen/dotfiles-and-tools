# Zsh + Tmux + Vim

Themes, look and font:

Zsh Theme: [bullet train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)

Tmux Theme: [Maglev](https://github.com/caiogondim/maglev)

font: [Hack](http://sourcefoundry.org/hack/)

Vim Theme: [Tomrrow-Night](https://github.com/chriskempson/tomorrow-theme)

<a href="https://github.com/jaredculp/iterm2-borderless-padding">Borderless iTerm</a>

#Neovim

I have completely switched to Neovim, and have been using it full time. The following are the steps to make the transition easier.

`ctrl` + `h` fix:

`infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti<Paste>`

![image](https://github.com/yifanchen/dotfiles/blob/master/vim.jpg "my zsh + tmux + vim")

