#!/bin/bash
colornow=$(cat /etc/rmbl/theme/color.conf)
colorfont=$(cat /etc/rmbl/warnafont/warnaf.conf)
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
export WH="$(cat /etc/rmbl/warnafont/$colorfont | grep -w "WARNAF" | cut -d: -f2|sed 's/ //g')"

show_menu() {
    clear
    python /usr/bin/system_info.py
    printf "${WH}[${COLOR1}1${WH}]${COLOR1} Xray Menu              ${WH}[${COLOR1}4${WH}]${COLOR1} Update Core\n"
    printf "${WH}[${COLOR1}2${WH}]${COLOR1} Domain Setup           ${WH}[${COLOR1}5${WH}]${COLOR1} Info Script\n"
    printf "${WH}[${COLOR1}3${WH}]${COLOR1} Speedtest              ${WH}[${COLOR1}6${WH}]${COLOR1} Update Script\n"
    printf "${COLOR1}+-------------------------------------------------------+"
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
        *) echo -e "Invalid input" ; sleep 1 ; show_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_menu
    handle_menu
done
