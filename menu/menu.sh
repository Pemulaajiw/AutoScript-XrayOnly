#!/bin/bash

show_menu() {
    clear
    python /usr/bin/system_info.py
    printf " [1] Xray Menu              [4] Update Core\n"
    printf " [2] Domain Setup           [5] Info Script\n"
    printf " [3] Speedtest              [6] Update Script\n"
    printf "+-------------------------------------------------------+"
    echo -e ""
}

# Fungsi untuk menangani input menu
handle_menu() {
    read -p "[ root ] t.me/November2k~# " opt
    printf "+-------------------------------------------------------+"
    echo -e ""
    case $opt in
        1) clear ; allxray ;;
        2) clear ; dns ;;
        3) clear ; speedtest ; echo " " ; read -n 1 -s -r -p "Press any key to back on menu" ; show_menu ;;
        4) clear ; update-xray ;;
        5) clear ; about ;;
        6) clear ; update-menu ;;
        *) echo -e "Invalid input" ; sleep 1 ; show_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_menu
    handle_menu
done