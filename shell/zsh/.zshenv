# Add Homebrew's executable directory to the front of the PATH
export PATH="/opt/homebrew/sbin":$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/opt/homebrew/bin":$PATH
source ~/.zim/zim_config.zsh
# neofetch
# pfetch
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
alias linode="ssh -i ~/.ssh/linode2 juanduque@170.187.153.8"
alias vpn-up="sudo wg-quick up wg0"
alias vpn-down="sudo wg-quick down wg0"
alias python="python3.11"

#General aliases
alias ..="cd .."
alias h="cd ~/"
alias du="du -sh *"
alias ls="exa"
alias ll="ls -la"
alias co="cd ~/Documents/Code/"
. "$HOME/.cargo/env"
