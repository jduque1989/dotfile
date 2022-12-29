# Add Homebrew's executable directory to the front of the PATH
export PATH="/opt/homebrew/sbin":$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/opt/homebrew/bin":$PATH
source ~/.zim/zim_config.zsh
# neofetch
pfetch
#Function to use fzf recursevly
_display_message(){
  dirtomove=$(ls | fzf) 
  cd "$dirtomove"
}
zle -N _display_message
bindkey '^h' _display_message
#
#
# _reverse_search() {
#   local selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)
#   LBUFFER=$selected_command
# }
# zle -N _reverse_search
# bindkey '^r' _reverse_search

alias wp_download="wget https://wordpress.org/latest.zip"
alias clr="clear"
alias shut="sudo shutdown -h now"

#General Apps
alias internet="python ~/Nextcloud/Sync/CODING/Python/speedtest/monitor.py"
alias v="nvim"
alias lv="lvim"
alias python="python3.9"

#General aliases
alias ..="cd .."
alias h="cd ~/"
alias du="du -sh *"
alias ls="exa"
alias ll="ls -la"
alias co="cd ~/Nextcloud/Sync/CODING"
. "$HOME/.cargo/env"
