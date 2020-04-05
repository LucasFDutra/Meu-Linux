#! /bin/bash

echo -n "Is TypeScript or JavaScript? [t/j]: "
read typeProject

if [ $typeProject == "t" ];
then
  gnome-terminal -- ~/github/my-development-environments/Web/TypeScript/Node/create_node_application.sh
fi

if [ $typeProject == "j" ];
then
  gnome-terminal -- ~/github/my-development-environments/Web/JavaScript/Node/create_node_application.sh
fi