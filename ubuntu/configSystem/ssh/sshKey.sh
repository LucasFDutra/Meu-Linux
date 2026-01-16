#!/bin/bash

echo -n "Digite seu email do github: "
read emailAddress
ssh-keygen -t rsa -b 4096 -C "$emailAddress"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
clear
echo "AGORA FAÇA AS CONFIGURAÇÕES ONLINE NO SEU GITHUB"
read
