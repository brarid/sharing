#!/bin/bash
MAC="18:66:96:C5:07:01"
iPhone_IP="192.168.1.134"
iath=`fping $iPhone_IP |grep alive`


while read bluetoothctl info "$MAC" | grep -q "Connected: yes"; do
 bluetoothctl connect "$MAC"
done