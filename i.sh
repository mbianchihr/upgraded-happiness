#!/usr/bin/env bash

loadkeys us
curl https://raw.githubusercontent.com/mkorevec/upgraded-happiness/master/local.conf -o local.conf
curl https://raw.githubusercontent.com/picodotdev/alis/master/download.sh | bash
mv local.conf alis.conf

echo "Encryption Password:"
read -s LUKS_PASSWORD 
echo LUKS_PASSWORD=\"$LUKS_PASSWORD\" >> alis.conf

echo "Repeat Encryption Password:"
read -s LUKS_PASSWORD_RETYPE
echo LUKS_PASSWORD_RETYPE=\"$LUKS_PASSWORD_RETYPE\" >> alis.conf

echo "Hostname:"
read HOSTNAME
echo HOSTNAME=\"$HOSTNAME\" >> alis.conf

echo "Username:"
read USER_NAME
echo USER_NAME=\"$USER_NAME\" >> alis.conf

echo "User Password:"
read -s USER_PASSWORD
echo USER_PASSWORD=\"$USER_PASSWORD\" >> alis.conf

echo "Repeat User Password:"
read -s USER_PASSWORD_RETYPE
echo USER_PASSWORD_RETYPE=\"$USER_PASSWORD_RETYPE\" >> alis.conf

echo "Root Password:"
read -s ROOT_PASSWORD
echo ROOT_PASSWORD=\"$ROOT_PASSWORD\" >> alis.conf

echo "Repeat Root Password:"
read -s ROOT_PASSWORD_RETYPE
echo ROOT_PASSWORD_RETYPE=\"$ROOT_PASSWORD_RETYPE\" >> alis.conf

./alis.sh
