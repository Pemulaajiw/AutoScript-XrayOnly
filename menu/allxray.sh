#!/bin/bash
COLOR1='\033[0;35m'
WH='\033[0;39m'

show_allxray_menu() {
    clear
    echo -e "${COLOR1}————————————————————————————"
    echo -e "${WH} ---- [ All Xray Menu ] ----"
    echo -e "${COLOR1}————————————————————————————"
    echo -e "${WH}[${COLOR1}1${WH}] Create Xray"
    echo -e "${WH}[${COLOR1}2${WH}] Extend Xray"
    echo -e "${WH}[${COLOR1}3${WH}] Delete Xray"
    echo -e "${WH}[${COLOR1}4${WH}] User Login"
    echo -e "${WH}[${COLOR1}5${WH}] User List"
    echo -e "${WH}[${COLOR1}6${WH}] BOT Notif"
    echo -e "${WH}[${COLOR1}7${WH}] Warp Setting"
    echo -e "${WH}[${COLOR1}8${WH}] User Traffic"
    echo -e "${WH}[${COLOR1}0${WH}] Back To Menu"
    echo -e "${COLOR1}————————————————————————————"
    echo -e ""
}

# Fungsi untuk menangani input menu
handle_allxray_menu() {
    read -p "[ root ] 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟~# "  opt
    echo -e ""
    case $opt in
        1) clear ; create-xray ;;
        2) clear ; extend-xray ;;
        3) clear ; del-xray ;;
        4) clear ; cek-xray ;;
        5) clear ; log-xray ;;
        6) clear ; bot-notif ;;
        7) clear ; route-xray ;;
        8) clear ; python /usr/bin/traffic.py ; echo " " ; read -n 1 -s -r -p "Press any key to back on menu" ; show_allxray_menu ;;
        0) clear ; menu ;;
        *) echo -e "Invalid input" ; sleep 1 ; show_allxray_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_allxray_menu
    handle_allxray_menu
done
