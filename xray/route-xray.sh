#!/bin/bash
colornow=$(cat /etc/rmbl/theme/color.conf)
colorfont=$(cat /etc/rmbl/warnafont/warnaf.conf)
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
export WH="$(cat /etc/rmbl/warnafont/$colorfont | grep -w "WARNAF" | cut -d: -f2|sed 's/ //g')"

CONFIG_FILE="/usr/local/etc/xray/config/06_routing.json"

# Fungsi untuk Verifikasi
verification_1st() {
    # Verifikasi perubahan
    if grep -q '"outboundTag": "warp"' $CONFIG_FILE; then
        echo -e "Perubahan berhasil dilakukan."
    else
        echo -e "Perubahan gagal, silakan periksa file konfigurasi."
    fi
}

# Fungsi untuk Verifikasi
verification_2nd() {
    # Verifikasi perubahan
    if grep -q '"outboundTag": "direct"' $CONFIG_FILE; then
        echo -e "Perubahan berhasil dilakukan."
    else
        echo -e "Perubahan gagal, silakan periksa file konfigurasi."
    fi
}

# Fungsi untuk merutekan seluruh lalu lintas via WARP
route_all_traffic() {
    # Menggunakan 'sed' untuk mengganti 'outboundTag' dari 'direct' menjadi 'warp'
    # sed -i '/"inboundTag": \[/,/"type": "field"/ s/"outboundTag": "direct"/"outboundTag": "warp"/' $CONFIG_FILE
    sed -i 's/"outboundTag": "direct"/"outboundTag": "warp"/g' $CONFIG_FILE
    verification_1st
    systemctl restart xray
}

# Fungsi untuk merutekan lalu lintas beberapa situs web via WARP
route_some_traffic() {
    # Menggunakan 'sed' untuk mengganti 'outboundTag' dari 'direct' menjadi 'warp' untuk domain tertentu
    sed -i '/"domain": \[/,/"type": "field"/ s/"outboundTag": "direct"/"outboundTag": "warp"/' $CONFIG_FILE
    verification_1st
    systemctl restart xray
}

# Fungsi untuk menonaktifkan rute WARP
disable_route() {
    # Menggunakan 'sed' untuk mengganti 'outboundTag' dari 'warp' menjadi 'direct'
    sed -i 's/"outboundTag": "warp"/"outboundTag": "direct"/g' $CONFIG_FILE
    systemctl restart xray
}

function_1st() {
  disable_route
  route_all_traffic
}
function_2nd() {
  disable_route
  route_some_traffic
}
function_3rd() {
  disable_route
  verification_2nd
}

# Fungsi untuk menampilkan menu
show_wg_menu() {
    clear
    echo -e "${COLOR1}——————————————————————————"
    echo -e "${WH}    -- [ Route Xray Menu ] --"
    echo -e "${COLOR1}——————————————————————————"
    echo -e ""
    echo -e "${WH}[${COLOR1}1${WH}] Route all traffic via WARP"
    echo -e "${WH}[${COLOR1}2${WH}] Route some website traffic via WARP"
    echo -e "${WH}[${COLOR1}3${WH}] Disable route WARP"
    echo -e ""
    echo -e "${WH}[${COLOR1}0${WH}] Back To Menu"
    echo -e ""
    echo -e "${COLOR1}——————————————————————————"
    echo -e ""
}

# Fungsi untuk menangani input menu
handle_wg_menu() {
    read -p "[ root ] 𝗙𝗔𝗡𝗡𝗧𝗨𝗡𝗘𝗟~# "  opt
    echo -e ""
    case $opt in
        1) function_1st ; sleep 2 ;;
        2) function_2nd ; sleep 2 ;;
        3) function_3rd ; sleep 2 ;;
        0) clear ; allxray ;;
        *) echo -e "Invalid input" ; sleep 1 ; show_wg_menu ;;
    esac
}

# Tampilkan menu dan tangani input pengguna
while true; do
    show_wg_menu
    handle_wg_menu
done
