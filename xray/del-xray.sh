#!/bin/bash
COLOR1='\033[0;35m'
WH='\033[0;39m'
ungu="\033[0;35m"
Xark="\033[0m"
clear
# . Liner 
baris_panjang() {
  echo -e "\033[5;36m ◇━━━━━━━━━━━━━━━━━◇\033[0m"
}

Sc_Credit(){
sleep 1
baris_panjang
echo -e "\e[92;1m      Terimakasih Telah Menggunakan \033[0m"
echo -e "\e[92;1m            Script 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟 \033[0m"
baris_panjang
exit 1
}
NUMBER_OF_CLIENTS=$(grep -c -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}    Delete All Xray Account"
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}    You have no existing clients!"
echo -e "${COLOR1}————————————————————————"
read -n 1 -s -r -p "Press any key to back on menu"
Sc_Credit
fi
clear
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}    Delete All Xray Account"
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}      User  Expired"
echo -e "${COLOR1}————————————————————————"
grep -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "${WH}tap enter to go back"
echo -e "${COLOR1}————————————————————————"
read -rp "Input Username : " user
if [ -z $user ]; then
Sc_Credit
else
exp=$(grep -wE "^#&@ $user" "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 3 | sort | uniq)
sed -i "/^#&@ $user $exp/,/^},{/d" /usr/local/etc/xray/config/04_inbounds.json
rm -rf /var/www/html/xray/xray-$user.html
rm -rf /user/xray-$user.log
systemctl restart xray
clear
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1}All Xray Account Success Deleted"
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1} Client Name : ${WH}$user"
echo -e "${COLBG1} Expired On  : ${WH}$exp"
echo -e "${COLOR1}————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
Sc_Credit
fi
