#!/bin/bash
colornow=$(cat /etc/rmbl/theme/color.conf)
colorfont=$(cat /etc/rmbl/warnafont/warnaf.conf)
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
export WH="$(cat /etc/rmbl/warnafont/$colorfont | grep -w "WARNAF" | cut -d: -f2|sed 's/ //g')"
ungu="\033[0;35m"
Xark="\033[0m"

show_theme_menu() {
    clear
    echo -e "${COLOR1} ———————————————————————————————————————${Xark}"
    echo -e  " ${WH}               ---- [ Theme Menu ] ----              ${Xark} "
    echo -e "${COLOR1} ———————————————————————————————————————${Xark}"
    echo -e "  ${COLOR1}1.)${NC} ${WH}COLOR RED    "  
    echo -e "  ${COLOR1}2.)${NC} ${WH}COLOR GREEN    " 
    echo -e "  ${COLOR1}3.)${NC} ${WH}COLOR YELLOW " 
    echo -e "  ${COLOR1}4.)${NC} ${WH}COLOR BLUE         " 
    echo -e "  ${COLOR1}5.)${NC} ${WH}COLOR MAGENTA "
    echo -e "  ${COLOR1}6.)${NC} ${WH}COLOR CYAN "
    echo -e "  ${COLOR1}7.)${NC} ${WH}COLOR LIGHT GRAY "
    echo -e "  ${COLOR1}8.)${NC} ${WH}COLOR LIGHT RED "
    echo -e "  ${COLOR1}9.)${NC} ${WH}COLOR LIGHT GREEN "
    echo -e " ${COLOR1}10.)${NC} ${WH}COLOR LIGHT YELLOW "
    echo -e " ${COLOR1}11.)${NC} ${WH}COLOR LIGHT BLUE "
    echo -e " ${COLOR1}12.)${NC} ${WH}COLOR LIGHT MAGENTA "
    echo -e " ${COLOR1}13.)${NC} ${WH}COLOR LIGHT CYAN "
    echo -e " ${COLOR1}14.)${NC} ${WH}COLOR DARKGRAY "
    echo -e " ${COLOR1}15.)${NC} ${WH}COLOR TEXT GREEN        "  
    echo -e " ${COLOR1}16.)${NC} ${WH}COLOR TEXT CYAN     "  
    echo -e " ${COLOR1}17.)${NC} ${WH}COLOR TEXT LIGHT        "  
    echo -e " ${COLOR1}00.)${NC} ${WH}EXIT   "
    echo -e "${COLOR1} ———————————————————————————————————————${Xark}"
    echo -e ""
}

# Fungsi untuk menangani input menu
handle_theme_menu() {
    read -p "[ root ] 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟~# "  opt
    echo -e ""
    case $opt in
01 | 1)
clear
echo "red" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
02 | 2)
clear
echo "green" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
03 | 3)
clear
echo "yellow" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
04 | 4)
clear
echo "blue" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
05 | 5)
clear
echo "magenta" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
06 | 6)
clear
echo "cyan" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
07 | 7)
clear
echo "lightgray" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
08 | 8)
clear
echo "lightred" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
09 | 9)
clear
echo "lightgreen" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
10 | 10)
clear
echo "lightyellow" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
11 | 11)
clear
echo "lightblue" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
12 | 12)
clear
echo "lightmagenta" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
13 | 13)
clear
echo "lightcyan" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
14 | 14)
clear
echo "darkgray" >/etc/rmbl/theme/color.conf
echo -e "SUCCES Ganti Color"
;;
15 | 15)
clear
echo "fontgren" >/etc/rmbl/warnafont/warnaf.conf
echo -e "SUCCES Ganti Warna Text"
;;
16 | 16)
clear
echo "fontcyan" >/etc/rmbl/warnafont/warnaf.conf
echo -e "SUCCES Ganti Warna Text"
;;
17 | 17)
clear
echo "fontlight" >/etc/rmbl/warnafont/warnaf.conf
echo -e "SUCCES Ganti Warna Text"
;;
00 | 0)
clear
menu
;;
        *) echo -e "Invalid input" ; sleep 1 ; show_theme_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_theme_menu
    handle_theme_menu
done
