#! /bin/bash

echo -n "Is TypeScript or JavaScript? [t/j]: "
read typeProject

if [ $typeProject == "t" ];
then
  gnome-terminal -- ~/github/LucasFDutra/Linux/my-development-environments/Web/TypeScript/React/create_react_application.sh
fi

if [ $typeProject == "j" ];
then
  gnome-terminal -- ~/github/LucasFDutra/Linux/my-development-environments/Web/JavaScript/React/create_react_application.sh
fi