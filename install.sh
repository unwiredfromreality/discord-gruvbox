#!/usr/bin/env bash

target_file="https://raw.githubusercontent.com/shvedes/discord-gruvbox/main/gruvbox.theme.css"

if [[ -d $HOME/.config/Vencord ]]; then 
	vencord_folder="$HOME/.config/Vencord"
	curl -s "$target_file" > "$vencord_folder"/themes/gruvbox.theme.css
	echo "Done"
elif [[ -d $HOME/.config/BetterDiscord ]]; then 
	bd_folder="$HOME/.config/BetterDiscord"
	curl -s "$target_file" > "$bd_folder"/themes/gruvbox.theme.css
	echo "Done"
elif [[ -d $HOME/.config/VencordDesktop ]]; then 
	vencord_desktop_folder="$HOME/.config/VencordDesktop/VencordDesktop"
	curl -s "$target_file" > "$vencord_desktop_folder"/themes/gruvbox.theme.css
else
	echo "BetterDiscord or Vencord are not installed on your system (cannot find config dirs)"
fi
