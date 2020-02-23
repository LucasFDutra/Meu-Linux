#! /bin/bash
#--------------------------------Questionário---------------------------------#
echo "Enter your app name: "
read appName

echo -n "Deseja instalar redux? [y/n]: "
read redux

echo -n "Deseja instalar axios? [y/n]: "
read axios

#---------------------------Criando reactJS project---------------------------#
create-react-app $appName
cd $appName

#-------------------------Criando estrutura de pastas-------------------------#
mkdir src
>src/routes.js
mkdir src/assets
mkdir src/components
mkdir src/constants
>src/constants/Colors.js
mkdir src/screens

if [ $axios == "y" ];
then
  mkdir src/services
  >src/services/api.js
fi

if [ $redux == "y" ];
then
  mkdir src/store
  mkdir src/store/actions
  mkdir src/store/reducers
fi

#---------------------------------instalações---------------------------------#
#redux
if [ $redux == "y" ];
then
  yarn add redux react-redux
fi

#axios
if [ $axios == "y" ];
then
  yarn add axios
fi

#----------------------------Configurações de lint----------------------------#
yarn add eslint -D
yarn add eslint-config-airbnb -D
yarn add eslint-plugin-import -D
yarn add eslint-plugin-jsx-a11y -D
yarn add eslint-plugin-react -D
yarn add babel-eslint
wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.editorconfig
wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.eslintrc.json

#-------------------------------------Fim-------------------------------------#
notify-send "The application is ready!"
yarn start
