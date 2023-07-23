#!/bin/bash

echo "Starting update ..."
sudo dnf update -y
flatpak update

clear
echo "Update completed."
