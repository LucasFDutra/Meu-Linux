#!/bin/bash

echo -n "Deseja instalar Gdebi? [y/n]: "
read gdebi
echo -n "Deseja instalar Synaptic? [y/n]: "
read synaptic
echo -n "Deseja instalar Gnome tweak? [y/n]: "
read gnomeTweak
echo -n "Deseja install o nemo? [y/n]"
read nemo
echo -n "Deseja instalar Gimp? [y/n]: "
read gimp
echo -n "Deseja instalar VLC? [y/n]: "
read vlc
echo -n "Deseja instalar codecs? [y/n]: "
read codecs
echo -n "Deseja instalar github? [y/n]: "
read github
echo -n "Deseja instalar rar? [y/n]: "
read rar
echo -n "Deseja instalar breeze cursor? [y/n]: "
read breezeCurso
echo -n "Deseja instalar obs? [y/n]: "
read obs
echo -n "Deseja instalar simple Screen Recorder? [y/n]: "
read screenRecorder
echo -n "Deseja instalar gparted? [y/n]: "
read gparted
echo -n "Deseja instalar inkscape? [y/n]: "
read inkscape
echo -n "Deseja instalar spotify? [y/n]: "
read spotify
echo -n "Deseja instalar sublime? [y/n]: "
read sublime
echo -n "Deseja instalar Peek? [y/n]: "
read peek
echo -n "Deseja instalar Flameshot? [y/n]: "
read flameshot
echo -n "Install vscode? [y/n]: "
read vscode
echo -n "Install Insomnia? [y/n]: "
read insomnia
echo -n "Install docker? [y/n]: "
read docker
echo -n "Install poetry? [y/n]: "
read poetry
echo -n "Install postbird? [y/n]: "
read postbird
echo -n "Deseja criar uma chave ssh para seu github? [y/n]: "
read sshKey
echo -n "Adicionar fontes? [y/n]: "
read fontes
echo -n "Adicionar scripts do nemo? [y/n]: "
read nemoscripts
echo -n "Deseja instalar zsh? [y/n]: "
read zsh

echo -n "pressione ENTER para continuar "
read
clear

echo "Primeiro vamos atualizar o sistema"
echo -n "pressione ENTER para continuar "
read

sudo apt-get update
sudo apt-get upgrade

echo -n "pressione ENTER para continuar "
read
clear


if [ $gdebi == "y" ];
then
  ./apps/gdebi.sh
fi

if [ $synaptic == "y" ];
then
  ./apps/synaptic.sh
fi

if [ $gnomeTweak == "y" ];
then
  ./apps/gnomeTweakTool.sh
fi

if [ $nemo == "y" ];
then
  ./apps/nemo.sh
fi

if [ $gimp == "y" ];
then
  ./apps/gimp.sh
fi

if [ $vlc == "y" ];
then
  ./apps/vlc.sh
fi

if [ $codecs == "y" ];
then
  ./apps/codecs.sh
fi

if [ $github == "y" ];
then
  ./apps/github.sh
fi

if [ $rar == "y" ];
then
  ./apps/rar.sh
fi

if [ $breezeCurso == "y" ];
then
  ./apps/breezeCursor.sh
fi

if [ $obs == "y" ];
then
  ./apps/obs.sh
fi

if [ $screenRecorder == "y" ];
then
  ./apps/simpleScreenRecorder.sh
fi

if [ $gparted == "y" ];
then
  ./apps/gparted.sh
fi

if [ $inkscape == "y" ];
then
  ./apps/inkscape.sh
fi

if [ $spotify == "y" ];
then
  ./apps/spotify.sh
fi

if [ $sublime == "y" ];
then
  ./apps/sublime.sh
fi

if [ $peek == "y" ];
then
  ./apps/peek.sh
fi

if [ $flameshot == "y" ];
then
  ./apps/flameshot.sh
fi

if [ $vscode == "y" ];
then
  ./apps/vscode.sh
fi

if [ $insomnia == "y" ];
then
  ./apps/insomnia.sh
fi

if [ $docker == "y" ];
then
  ./apps/docker.sh
fi

if [ $postbird == "y" ];
then
  ./apps/postbird.sh
fi

if [ $poetry == "y" ];
then
  ./apps/poetry.sh
fi

if [ $sshKey == "y" ];
then
  ./configSystem/ssh/sshKey.sh
fi

if [ $fontes == "y" ];
then
  cp -r configSystem/Fontes/ ~
fi

if [ $nemoscripts == "y" ];
then
  cd configSystem/nemoScripts/
  ./configNemoScripts.sh
  cd ..
  cd ..
fi

sudo apt-get update
sudo apt-get upgrade

if [ $zsh == "y" ];
then
  ./apps/zsh.sh
fi

echo -n "É RECOMENDADO QUE REINICIE SEU PC. VOCÊ DESEJA REINICIAR? [y/n]"
read reiniciar
if [ $reiniciar == "y" ];
then
  reboot
else
  echo "Isso foi divertido, tchau!"
  read
  exit
fi
