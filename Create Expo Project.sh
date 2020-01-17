#! /bin/bash
echo "Enter your app name: "
read appName

expo init $appName

cd $appName

yarn add eslint -D

yarn add eslint-config-airbnb -D

yarn add eslint-plugin-import -D

yarn add eslint-plugin-jsx-a11y -D

yarn add eslint-plugin-react -D

yarn add babel-eslint

wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.editorconfig

wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.eslintrc.json

notify-send "The application is ready!"

expo start
