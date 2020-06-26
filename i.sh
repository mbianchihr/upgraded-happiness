#!/usr/bin/env bash

echo "Downloading Alis..."
loadkeys us
curl https://raw.githubusercontent.com/picodotdev/alis/master/download.sh | bash
curl https://raw.githubusercontent.com/mkorevec/upgraded-happiness/master/local.conf -o local.conf
rm alis.conf
mv local.conf alis.conf
