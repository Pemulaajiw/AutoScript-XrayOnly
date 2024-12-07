function baris_panjang() {
  echo -e "${COLOR1} ———————————————————————————————————————${Xark}"
}
function ATAS() {
  echo -e  " ${WH}               MENU COLOR              ${Xark} "
}

function  FIXX() {
  echo -e  " ${WH}               TEXT COLOR              ${Xark}"
}


function  CLEAR() {
  echo -e  " ${WH}               MENU CLEAR             ${Xark}"
}


function  INFORMATION() {
  echo -e  " ${WH}              INFORMATION             ${Xark}"
}


function  OTHER() {
  echo -e  " ${WH}                OTHER                 ${Xark}"
}


function Create_Bot_Notif() {
  create-bot-notif
}


function Info_Port() {
  prot
}



# Banner 
function Banner(){
clear
baris_panjang
ATAS
baris_panjang
}


function Menu_Lambofgod() {
baris_panjang
echo -e ""
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
baris_panjang
FIXX
baris_panjang  
echo -e " ${COLOR1}15.)${NC} ${WH}COLOR TEXT GREEN        "  
echo -e " ${COLOR1}16.)${NC} ${WH}COLOR TEXT CYAN     "  
echo -e " ${COLOR1}17.)${NC} ${WH}COLOR TEXT LIGHT        "  
echo -e " ${COLOR1}00.)${NC} ${WH}EXIT   "
baris_panjang
CLEAR
baris_panjang
echo -e " ${COLOR1}14.)${NC} ${WH}Clear Cache "
echo -e " ${COLOR1}15.)${NC} ${WH}Clear Logs "
echo -e " ${COLOR1}16.)${NC} ${WH}Clear Cache File "
baris_panjang
INFORMATION
baris_panjang
echo -e " ${COLOR1}17.)${NC} ${WH}Info Service Port  "
echo -e " ${COLOR1}18.)${NC} ${WH}Enkripsi File"
baris_panjang
echo -e " ${COLOR1}19.)${NC} ${WH}AutoBackup Admin Settings"
echo -e " ${COLOR1}20.)${NC} ${WH}Back to Menu"
echo -e "  ${COLOR1}x.)${NC} ${WH}EXIT "
echo -e ""
baris_panjang
echo -e ""

}

function Select_Menu() {
read -p "Select From Options [1-19 or x] :  " Ltt
case $Ltt in
1) clear ; run ;;
2) clear ; restart ;;
3) clear ; autoreboot ;;
4) clear ; gotop ;;
5) clear ; speedtest ;;
6) clear ; xp ;;
7) clear ; nano /etc/kyt.txt ;;
8) clear ; change-domain ;;
9) clear ; fixhap ;;
10) clear ; fixcert ;;
11) clear ; cf ;;
12) clear ; UDEPE ;;
13) clear ; mbot ;;
14) clear ; clearcache ;;
15) clear ; clearlog ;;
16) clear ; delet-cache-file ;;
17) clear ; Info_Port ;;
18) clear ; efile ;;
19) clear ; autobackup ;;
20) clear ; menu ;;
99) clear ; sd ;;
x) exit ;;
*) m-ftr ;;
esac
}


Banner
Menu_Lambofgod
Select_Menu

echo -e " $COLOR1————————————————————————————————————————————————————————————————${NC}"
echo -e " $COLOR1║${NC}${COLBG1}             ${WH}• COLOR PANEL MENU •                  ${NC}$COLOR1║ $NC"
echo -e " $COLOR1╚════════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}01${WH}]$NC ${COLOR1}• ${WH}COLOR RED         ${WH}[${COLOR1}08${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT RED$NC$COLOR1    ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}02${WH}]$NC ${COLOR1}• ${WH}COLOR GREEN       ${WH}[${COLOR1}09${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT GREEN$NC$COLOR1  ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}03${WH}]$NC ${COLOR1}• ${WH}COLOR YELLOW      ${WH}[${COLOR1}10${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT YELLOW$NC$COLOR1 ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}04${WH}]$NC ${COLOR1}• ${WH}COLOR BLUE        ${WH}[${COLOR1}11${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT BLUE$NC$COLOR1   ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}05${WH}]$NC ${COLOR1}• ${WH}COLOR MAGENTA     ${WH}[${COLOR1}12${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT MAGENTA$NC$COLOR1║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}06${WH}]$NC ${COLOR1}• ${WH}COLOR CYAN        ${WH}[${COLOR1}13${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT CYAN$NC$COLOR1   ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}07${WH}]$NC ${COLOR1}• ${WH}COLOR LIGHT GRAY  ${WH}[${COLOR1}14${WH}]$NC ${COLOR1}• ${WH}COLOR DARKGRAY$NC$COLOR1     ║$NC"
echo -e " $COLOR1╚════════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}15${WH}]$NC ${COLOR1}• ${WH}COLOR TEXT GREEN  ${WH}[${COLOR1}17${WH}]$NC ${COLOR1}• ${WH}COLOR TEXT LIGHT$NC$COLOR1   ║$NC"
echo -e " $COLOR1║$NC ${WH}[${COLOR1}16${WH}]$NC ${COLOR1}• ${WH}COLOR TEXT CYAN   ${WH}[${COLOR1}00${WH}]$NC ${COLOR1}• ${WH}EXIT          $NC$COLOR1     ║$NC"
echo -e " $COLOR1╚════════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔═════════════════════════ ${WH}BY${NC} ${COLOR1}═══════════════════════╗ ${NC}"
echo -e "  $COLOR1${NC}              ${WH}   • $author •                 $COLOR1 $NC"
echo -e " $COLOR1╚════════════════════════════════════════════════════╝${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read colormenu
case $colormenu in
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
*)
clear
m-theme
;;
esac
echo -e ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu


