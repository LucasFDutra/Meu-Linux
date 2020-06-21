#! /bin/bash

echo -n "Is TypeScript or JavaScript? [t/j]: "
read typeProject

if [ $typeProject == "t" ];
then
  gnome-terminal -- ~/github/LucasFDutra/Linux/my-development-environments/Web/TypeScript/React-Native/create_react_native_application.sh
fi

if [ $typeProject == "j" ];
then
  gnome-terminal -- ~/github/LucasFDutra/Linux/my-development-environments/Web/JavaScript/React-Native/create_react_native_application.sh
fi