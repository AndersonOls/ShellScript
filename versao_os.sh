#!/usr/bin/env bash

arquivoRelease="/etc/os-release"
idOs=$(grep '^ID=' "$arquivoRelease" | cut -d"=" -f2 | tr -d '"')

# Deixar tudo em minúsculo
idOs=$(echo "$idOs" | tr 'A-Z' 'a-z')

# Verificar distro
case $idOs in
    debian | linuxmint | ubuntu | zorin)
        echo "Distribuição Debian."
        apt update
        ;;
    fedora | fedora-silverblue | fedora-kinoite)
        echo "Distribuição Fedora."
        dnf update
        ;;
    slackware)
        echo "É Slackware."
        slackpkg update
        ;;
    *)
        echo "Distribuição não reconhecida."
        ;;
esac
