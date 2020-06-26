#!/usr/bin/env bash

echo "Downloading Alis..."
loadkeys us
curl https://raw.githubusercontent.com/picodotdev/alis/master/download.sh | bash
rm alis.conf
mv local.conf alis.conf
vim alis.conf
