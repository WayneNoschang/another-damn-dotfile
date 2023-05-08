#    ____   ___   _  _            ___    ___    _      ___    ___          __  __   ___   _  _             ___   ___    ___    ___    ___   
#   |_  /  / __| | || |    o O O / __|  / _ \  | |    / _ \  | _ \    o O |  \/  | /   \ | \| |    o O O  | _ \ /   \  / __|  | __|  / __|  
#    / /   \__ \ | __ |   o     | (__  | (_) | | |__ | (_) | |   /   o    | |\/| | | - | | .` |   o       |  _/ | - | | (_ |  | _|   \__ \  
#   /___|  |___/ |_||_|  TS__[O] \___|  \___/  |____| \___/  |_|_\  TS__[O|_|__|_| |_|_| |_|\_|  TS__[O] _|_|_  |_|_|  \___|  |___|  |___/  
# _|"""""_|"""""_|"""""|{======_|"""""_|"""""_|"""""_|"""""_|"""""|{======_|"""""_|"""""_|"""""|{======_| """ _|"""""_|"""""_|"""""_|"""""| 
# "`-0-0-"`-0-0-"`-0-0-./o--000"`-0-0-"`-0-0-"`-0-0-"`-0-0-"`-0-0-./o--000"`-0-0-"`-0-0-"`-0-0-./o--000"`-0-0-"`-0-0-"`-0-0-"`-0-0-"`-0-0-' 

# termcap
# ks       make the keypad send commands
# ke       make the keypad send digits
# vb       emit visual bell
# mb       start blink
# md       start bold
# me       turn off bold, blink and underline
# so       start standout (reverse video)
# se       stop standout
# us       start underline
# ue       stop underline

function man() {
	env \
		LESS_TERMCAP_md=$(tput bold; tput setaf 4) \
		LESS_TERMCAP_me=$(tput sgr0) \
		LESS_TERMCAP_mb=$(tput blink) \
		LESS_TERMCAP_us=$(tput setaf 2) \
		LESS_TERMCAP_ue=$(tput sgr0) \
		LESS_TERMCAP_so=$(tput smso) \
		LESS_TERMCAP_se=$(tput rmso) \
		PAGER="${commands[less]:-$PAGER}" \
		man "$@"
}
