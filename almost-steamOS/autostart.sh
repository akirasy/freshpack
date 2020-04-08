#!/usr/bin/env bash

app="almost-steamOS"

autostart(){
    text="\nStarting SteamOS in 2 seconds..."
    exec 3>&1
    stream=$(dialog --backtitle "$app" --title "$app" --timeout 2 --yes-label "Menu" --no-label "Start" --yesno "$text" 8 40 2>&1 1>&3)
    if   [ $? -eq 0 ]; then
        menu_item
    elif [ $? -eq 1 ]; then
        echo "command: steam"
    fi
}

menu_item(){
    text="Choose one:"
    title="Menu"
    terminal_intro="\nRunning on: Debian GNU/Linux 10 (buster)\n"
    exec 3>&1
    stream=$(dialog --backtitle "$app" --title "$title" --no-cancel --menu "$text" 0 0 0 "1" "Start SteamOS" "2" "Start OpenBox" "3" "Configure network (nmtui)" "4" "Debian console terminal" 2>&1 1>&3)
    case $stream in
    1) echo "command: steam"            ;;
    2) echo "command: startx"           ;;
    3) echo "command: nmtui"            ;;
    4) clear; echo -e $terminal_intro   ;;
    esac
}

# begin
autostart
