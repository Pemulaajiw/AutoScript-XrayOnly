#!/bin/bash
colornow=$(cat /etc/rmbl/theme/color.conf)
colorfont=$(cat /etc/rmbl/warnafont/warnaf.conf)
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
export WH="$(cat /etc/rmbl/warnafont/$colorfont | grep -w "WARNAF" | cut -d: -f2|sed 's/ //g')"
ungu="\033[0;35m"
Xark="\033[0m"
# . Liner 
function baris_panjang() {
  echo -e "${BlueCyan} ——————————————————————————————————— ${Xark} "
}

function Sc_Credit(){
sleep 1
baris_panjang
echo -e "${ungu}  Terimakasih Telah Menggunakan ${Xark}"
echo -e "${ungu}          Script Credit 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟 ${Xark}"
baris_panjang
exit 1
}

duration=6
frames=("██10%" "█████35%" "█████████65%" "█████████████80%" "█████████████████████90%" "█████████████████████████100%")

# Menghitung jumlah frame
num_frames=${#frames[@]}

# Menghitung jumlah iterasi
num_iterations=$((duration))

# Fungsi untuk menampilkan animasi loading berwarna

Loading_Animasi() {
    for ((i = 0; i < num_iterations; i++)); do
        clear
        index=$((i % num_frames))
        color_code=$((31 + i % 7))
echo ""
echo ""
echo ""
echo -e "\e[1;${color_code}m ${frames[$index]}\e[0m"
sleep 0.5
    done
}

# Menampilkan pesan Sukses setelah animasi selesai
function Loading_Succes() {
clear
echo -e  "\033[5;32mSucces\033[0m"
sleep 1
clear
}

clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1}Extend All Xray Account              "
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1}  You have no existing clients!"
echo -e "${COLOR1}————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
allxray
fi
clear
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1}Extend All Xray Account              "
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1} User  Expired  "
echo -e "${COLOR1}————————————————————————"
grep -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "${COLBG1}tap enter to go back"
echo -e "${COLOR1}————————————————————————"
read -rp "${COLBG1}Input Username : " user
if [ -z $user ]; then
allxray
else
read -p "${COLBG1}Expired (days): " masaaktif
echo ""

Loading_Animasi
Loading_Succes

exp=$(grep -wE "^#&@ $user" "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 3 | sort | uniq)
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
sed -i "/#&@ $user/c\#&@ $user $exp4" /usr/local/etc/xray/config/04_inbounds.json
systemctl restart xray
clear
echo -e "echo ""

echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1}All Xray Account Success Extended         "
echo -e "${COLOR1}————————————————————————"
echo -e "${COLBG1} Client Name : ${WH}$user"
echo -e "${COLBG1} Expired On  : ${WH}$exp4"
echo -e "${COLOR1}————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
Sc_Credit
fi
