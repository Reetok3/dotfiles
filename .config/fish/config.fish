set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias gi peco z 
# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG $HOME/.config/omf
function fish_prompt
powerline-shell --shell bare $status
end
# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
set SHELL fish
set fish_theme agnoster
function fish_user_key_bindings
bind \cr peco_select_history # Bind for peco select history to Ctrl+R
bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F
end
alias vim="vim"
alias ls="exa -a"
alias cat="bat"
alias make_gitignore="wget https://www.gitignore.io/api/c,vim,ruby,macos -o .gitignore"
alias rm="rm -rf"
alias cp="cp -r"
alias e="exit"
alias edit_config="vim ~/.config/fish/config.fish"
alias editcnf="vim ~/.config/fish/config.fish"
alias sourcecnf=". ~/.config/fish/config.fish"
alias シーザー暗号="ruby main.rb"
alias wget="axel"
alias c="clear"
alias l="lazygit"
alias sl="ls"
alias cl="clear"
export PATH="$HOME/.pyenv/shims:$PATH"
alias wget="axel -a -n 10"
alias dgxssh="ssh rihito_ninokata@0.tcp.ngrok.io -p 17809"
alias raspissh="ssh reetoknino@reetok-raspi.local"
alias raspisshremote="ssh reetoknino@0.tcp.ngrok.io -p 12532"
alias bitdir="cd ~/.ghq/github.com/bittn/bittn/;c"
alias ff="env EDITOR=vim ff"
alias f="env EDITOR=vim ff"
alias cls="clear;ls"
alias emacs="emacs -nw"
set PS_ARGS %cpu,%mem,lstart
export LC_CTYPE=en_US.UTF-8
export TERM=xterm-256color
set EDITOR "vim"
set PS1 "$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#------------------------------------------------
# FISH PATH SETTING
# set -U fish_user_paths /usr/local/bin $fish_user_paths
#------------------------------------------------
set PATH ~/go/bin/ $PATH
set PATH /usr/local/bin $PATH
set PATH /usr/bin $PATH
set JAVA_HOME '"/usr/libexec/java_home -v 12.0.2"'
set CPATH /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include $CPATH
[ -n "$RANGER_LEVEL" ] ; and  PS1="$PS1"'(in ranger) '
set -x BITTNDIR /Users/reetoknino/Downloads/bittn-3.0.0
set PATH /usr/local/bin $PATH
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib"
set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include"
set PATH /usr/local/opt/binutils/bin $PATH

# tmux の自動起動
if test -z $TMUX
  tmux new-session
else
  cls
end
