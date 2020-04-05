#!/bin/bash

echo "Qual o seu sistema?"
echo "1 - Ubuntu"
echo "2 - Linux mint"
echo "0 - exit"
read system

clear

if [ $system -eq 1 ];
then
  echo -n "Deseja instalar Dropbox nautilus? [y/n]: "
  read dropboxNautilus
  echo -n "Deseja instalar Gdebi? [y/n]: "
  read gdebi
  echo -n "Deseja instalar Synaptic? [y/n]: "
  read synaptic
  echo -n "Deseja instalar Gnome tweak? [y/n]: "
  read gnomeTweak
  echo -n "Deseja instalar Transmission? [y/n]: "
  read transmission
  echo -n "Deseja instalar Libreoffice? [y/n]: "
  read libreoffice

  echo -n "Deseja instalar Timeshift? [y/n]: "
  read timeshift
elif [ $system -eq 2 ];
then
  echo -n "Deseja instalar Dropbox nemo? [y/n]: "
  read dropboxNemo
  echo -n "Deseja instalar SnapD? [y/n]: "
  read snapD
else
  exit
fi

echo -n "Deseja instalar Gimp? [y/n]: "
read gimp
echo -n "Deseja instalar VLC? [y/n]: "
read vlc
echo -n "Deseja instalar codecs? [y/n]: "
read codecs
echo -n "Deseja instalar github? [y/n]: "
read github
echo -n "Deseja instalar node? [y/n]: "
echo -n "Deseja instalar cpp compiler? [y/n]: "
read cppCompiler
echo -n "Deseja instalar rar? [y/n]: "
read rar
echo -n "Deseja instalar graphics? [y/n]: "
read graphics
echo -n "Deseja instalar games? [y/n]: "
read games
echo -n "Deseja instalar breeze cursor? [y/n]: "
read breezeCurso
echo -n "Deseja instalar obs? [y/n]: "
read obs
echo -n "Deseja instalar simple Screen Recorder? [y/n]: "
read screenRecorder
echo -n "Deseja instalar open drive? [y/n]: "
read openDrive
echo -n "Deseja instalar gparted? [y/n]: "
read gparted
echo -n "Deseja instalar inkscape? [y/n]: "
read inkscape
echo -n "Deseja instalar octave? [y/n]: "
read octave
echo -n "Deseja instalar spotify? [y/n]: "
read spotify
echo -n "Deseja instalar sublime? [y/n]: "
read sublime
echo -n "Deseja instalar deepin screenshot? [y/n]: "
read deepinScreenshot
echo -n "Deseja instalar Peek? [y/n]: "
read peek
echo -n "Deseja instalar Flameshot? [y/n]: "
read flameshot
echo -n "Deseja instalar mega? [y/n]: "
read mega
echo -n "Deseja instalar LAMP? [y/n]: "
read lamp
echo -n "Deseja clonar repositórios? [y/n]: "
read clone

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

if [ $codecs == "y" ];
then
  ./apps/codecs.sh
fi

if [ $github == "y" ];
then
  ./apps/github.sh
fi

if [ $cppCompiler == "y" ];
then
  ./apps/cppCompiler.sh
fi

if [ $rar == "y" ];
then
  ./apps/rar.sh
fi

if [ $graphics == "y" ];
then
  ./apps/graphics.sh
fi

if [ $games == "y" ];
then
  ./apps/games.sh
fi

if [ $snapD == "y" ];
then
  ./apps/snapd.sh
fi

if [ $gnomeTweak == "y" ];
then
  ./apps/gnomeTweakTool.sh
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

if [ $openDrive == "y" ];
then
  ./apps/openDrive.sh
fi

if [ $dropboxNautilus == "y" ];
then
  ./apps/dropboxNautilus.sh
fi

if [ $dropboxNemo == "y" ];
then
  ./apps/dropboxNemo.sh
fi

if [ $gdebi == "y" ];
then
  ./apps/gdebi.sh
fi

if [ $gimp == "y" ];
then
  ./apps/gimp.sh
fi

if [ $gparted == "y" ];
then
  ./apps/gparted.sh
fi

if [ $inkscape == "y" ];
then
  ./apps/inkscape.sh
fi

if [ $libreoffice == "y" ];
then
  ./apps/libreoffice.sh
fi

if [ $octave == "y" ];
then
  ./apps/octave.sh
fi

if [ $spotify == "y" ];
then
  ./apps/spotify.sh
fi

if [ $sublime == "y" ];
then
  ./apps/sublime.sh
fi

if [ $synaptic == "y" ];
then
  ./apps/synaptic.sh
fi

if [ $timeshift == "y" ];
then
  ./apps/timeshift.sh
fi

if [ $transmission == "y" ];
then
  ./apps/transmission.sh
fi

if [ $vlc == "y" ];
then
  ./apps/vlc.sh
fi

if [ $deepinScreenshot == "y" ];
then
  ./apps/deepinScreenshot.sh
fi

if [ $peek == "y" ];
then
  ./apps/peek.sh
fi

if [ $flameshot == "y" ];
then
  ./apps/flameshot.sh
fi

if [ $mega == "y" ];
then
  wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
  sudo dpkg -i megasync-xUbuntu_18.04_amd64.deb
  rm megasync-xUbuntu_18.04_amd64.deb
fi

if [ $lamp == "y" ];
then
  ./apps/LAMP.sh
fi

if [ $clone == "y" ];
then
  ./cloneGitRepositories.sh
  ./my-development-environments/setup.sh
fi

echo -n "pressione ENTER para continuar "
read

clear

echo -n "Deseja criar uma chave ssh para seu github? [y/n]: "
read sshKey

if [ $sshKey == "y" ];
then
  ./configSystem/ssh/sshKey.sh
fi

clear

if [ $system -eq 2 ];
then
  echo -n "Deseja adicionar scripts ao nemo? [y/n]: "
  read nemoScripts
  if [ $nemoScripts == "y" ];
  then
    cd configSystem/nemoScripts
    ./configNemoScripts.sh
    cd ..
    cd ..
  fi
fi

echo -n "Seu teclado precisa configurar o cedilla? [y/n]: "
read cedilla

if [ $cedilla == "y" ];
then
  cd configSystem/configCedilla
  ./configCedilla.sh
  cd ..
  cd ..
fi

echo "Agora vamos atualizar o sistema novamente"
echo -n "pressione ENTER para continuar "
read

sudo apt-get update
sudo apt-get upgrade

echo -n "pressione ENTER para continuar "
read
clear

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
