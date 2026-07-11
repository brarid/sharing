#!/bin/bash

MAC="18:66:96:C5:07:01"
if ! bluetoothctl info "$MAC" | grep -q "Connected: yes"; then
 bluetoothctl connect "$MAC"
fi