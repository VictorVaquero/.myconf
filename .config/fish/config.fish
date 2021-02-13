# My fish main dot file
#

# Stop reading if non-interactive
if not status --is-interactive
    exit 0
end

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
alias vim="nvim" # same
alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"


# ----- Start X at login

if status --is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx
    end
end


# ----- Output neofetch when not in login
if not status --is-login 
    echo \n
    neofetch
end

