#!/usr/bin/bash

install() {
  APK=
  for i in cron htop openssh-server wget curl nano screen iputils-ping net-tools dnsutils iproute2 tcptraceroute bc socat systemctl
  do
    if [ -z `type -P $i` ]
    then
      APK="$APK $i"
    fi
  done
  if [ -z "$APK" ]
  then
    echo "APK OK"
  else
    apt update && apt -y install $APK
  fi
}
install
