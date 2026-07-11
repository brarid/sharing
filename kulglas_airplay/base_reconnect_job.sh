#!/bin/bash
MAC="18:66:96:C5:07:01"
iPhone_IP="192.168.1.134"
iath=`fping $iPhone_IP |grep alive`


while true ; do 
    if $iath && ! bluetoothctl info "$MAC" | grep -q "Connected: yes"; then
 bluetoothctl connect "$MAC"
 fi
done