#!/bin/bash

sudo apt install flatpak

# Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Postman
flatpak install -y flathub com.getpostman.Postman

# Office
flatpak install -y flathub com.wps.Office

# qBittorrent
flatpak install -y flathub org.qbittorrent.qBittorrent
