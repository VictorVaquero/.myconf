# My fish main dot file
#

# ---------- System Variables -----
#

set EDITOR "nvim"
set TERMINAL "fish"
set BROWSER "firefox"

# ------ Bindings ----
#

# To recreate the "!!" sintax
bind ! __history_previous_command

# ------ Aliases -----
#
alias su="su -l" # Always clear everything before changing users
alias vi="nvim" # Neovim as deafult
alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"


# ----- Start X at login

if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx
    end
end


# ----- Output neofetch when not in login
if not status --is-login
    echo \n
    neofetch
end

