#!/bin/bash
COLOR1='\033[0;35m'
WH='\033[0;39m'
ungu="\033[0;35m"
Xark="\033[0m"
# . Liner 
baris_panjang() {
  echo -e "${BlueCyan} ——————————————————————————————————— ${Xark} "
}

Sc_Credit(){
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
echo -e "${WH}    Extend All Xray Account              "
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}   You have no existing clients!"
echo -e "${COLOR1}————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
Sc_Credit
fi
clear
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}    Extend All Xray Account              "
echo -e "${COLOR1}————————————————————————"
echo -e "${WH}      User  Expired  "
echo -e "${COLOR1}————————————————————————"
grep -E "^#&@ " "/usr/local/etc/xray/config/04_inbounds.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "${WH}tap enter to go back"
echo -e "${COLOR1}————————————————————————"
read -rp "Input Username : " user
if [ -z $user ]; then
Sc_Credit
else
read -p "Expired (days): " masaaktif
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
echo -e "${WH}    All Xray Account Success Extended         "
echo -e "${COLOR1}————————————————————————"
echo -e "${COLOR1} Client Name : ${WH}$user"
echo -e "${COLOR1} Expired On  : ${WH}$exp4"
echo -e "${COLOR1}————————————————————————"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
Sc_Credit
fi
