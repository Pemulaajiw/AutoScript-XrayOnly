#!/bin/bash
clear
# . Liner 
function baris_panjang() {
  echo -e "\033[5;36m ◇━━━━━━━━━━━━━━━━━◇\033[0m"
}

function Sc_Credit(){
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
echo -e "————————————————————————"
echo -e "Delete All Xray Account"
echo -e "————————————————————————"
echo -e "You have no existing clients!"
echo -e "————————————————————————"
read -n 1 -s -r -p "Press any key to back on menu"
allxray
fi
clear
echo -e "————————————————————————"
echo -e "Delete All Xray Account"
echo -e "————————————————————————"
echo -e " User  Expired"
echo -e "————————————————————————"
grep -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "tap enter to go back"
echo -e "————————————————————————"
read -rp "Input Username : " user
if [ -z $user ]; then
allxray
else
exp=$(grep -wE "^#&@ $user" "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 3 | sort | uniq)
sed -i "/^#&@ $user $exp/,/^},{/d" /usr/local/etc/xray/config/04_inbounds.json
rm -rf /var/www/html/xray/xray-$user.html
rm -rf /user/xray-$user.log
systemctl restart xray
clear
echo -e "————————————————————————"
echo -e "All Xray Account Success Deleted"
echo -e "————————————————————————"
echo -e " Client Name : $user"
echo -e " Expired On  : $exp"
echo -e "————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
Sc_Credit
fi
