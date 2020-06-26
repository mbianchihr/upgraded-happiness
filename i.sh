#!/usr/bin/env bash

echo "Downloading Alis..."
loadkeys us
curl https://raw.githubusercontent.com/mkorevec/upgraded-happiness/master/local.conf -o local.conf
curl https://raw.githubusercontent.com/picodotdev/alis/master/download.sh -o download.sh
./download.sh
rm alis.conf
mv local.conf alis.conf
