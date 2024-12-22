#!/bin/bash
COLOR1='\033[0;35m'
WH='\033[0;39m'

show_menu() {
    clear
    python /usr/bin/system_info.py
    echo -e "${WH}[${COLOR1}1${WH}]${COLOR1} Xray Menu              ${WH}[${COLOR1}4${WH}]${COLOR1} Update Core\n"
    echo -e "${WH}[${COLOR1}2${WH}]${COLOR1} Domain Setup           ${WH}[${COLOR1}5${WH}]${COLOR1} Info Script\n"
    echo -e "${WH}[${COLOR1}3${WH}]${COLOR1} Speedtest              ${WH}[${COLOR1}6${WH}]${COLOR1} Update Script\n"
    echo -e "${COLOR1}${WH} Original Script By Dugong-Lewat"
    echo -e "${COLOR1}${WH} Mod Menu By Fan-Aja"
    echo -e "${COLOR1}+-------------------------------------------------------+"
    echo -e ""
}

# Fungsi untuk menangani input menu
handle_menu() {
    read -p "[ root ] 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟~# " opt
    printf "${COLOR1}+-------------------------------------------------------+"
    echo -e ""
    case $opt in
        1) clear ; allxray ;;
        2) clear ; dns ;;
        3) clear ; speedtest ; echo " " ; read -n 1 -s -r -p "Press any key to back on menu" ; show_menu ;;
        4) clear ; update-xray ;;
        5) clear ; about ;;
        6) clear ; update-menu ;;
        7) clear ; theme.sh ;;
        *) echo -e "Invalid input" ; sleep 1 ; show_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_menu
    handle_menu
done
