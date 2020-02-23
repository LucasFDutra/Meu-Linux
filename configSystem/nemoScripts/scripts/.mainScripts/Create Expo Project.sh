#! /bin/bash
#--------------------------------Questionário---------------------------------#
echo "Enter your app name: "
read appName

echo -n "Deseja instalar react-navigation? [y/n]: "
read reactNavigation

if [$reactNavigation == "y"];
then
  echo - n "stack navigator? [y/n]: "
  read stack
  echo - n "drawer navigator? [y/n]: "
  read drawer
  echo - n "bottom navigator? [y/n]: "
  read bottom
fi

echo -n "Deseja instalar redux? [y/n]: "
read redux

echo -n "Deseja instalar axios? [y/n]: "
read axios

#----------------------------Criando expo project-----------------------------#
expo init $appName
cd $appName

#-------------------------Criando estrutura de pastas-------------------------#
mkdir src
mkdir src/assets
mkdir src/components
mkdir src/constants
>src/constants/Colors.js
mkdir src/screens

if [$axios == "y"];
then
  mkdir src/services
  >src/services/api.js
fi

if [$redux == "y"];
then
  mkdir src/store
  mkdir src/store/actions
  mkdir src/store/reducers
fi

if [$reactNavigation == "y"];
then
>src/routes.js
fi

#---------------------------------instalações---------------------------------#

#navigation
if [ $reactNavigation == "y" ];
then
  expo install @react-navigation/native
  expo install react-native-gesture-handler react-native-reanimated react-native-screens react-native-safe-area-context @react-native-community/masked-view
fi

#stack navigator
if [$stack == "y"];
then
  expo install @react-navigation/stack
fi

#drawer navigator
if [$drawer == "y"];
then
  expo install @react-navigation/drawer
fi

#bottom navigator
if [$bottom == "y"];
then
  expo install @react-navigation/bottom-tabs
  expo install @react-navigation/material-bottom-tabs react-native-paper
fi

#redux
if [ $redux == "y" ];
then
  yarn add redux react-redux
fi

#axios
if [$axios == "y"];
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
expo start
