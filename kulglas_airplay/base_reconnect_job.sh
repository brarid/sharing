#!/bin/bash
MAC="18:66:96:C5:07:01"
iath="$(fping 192.168.1.135 2>/dev/null |grep alive | wc -l)"

    if [[ $iath -eq 1 ]] && ! bluetoothctl info "$MAC" | grep -q "Connected: yes"; then
 bluetoothctl connect "$MAC"
 fi