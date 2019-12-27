#! /bin/bash

echo "Enter your app name: "
read appName

npx react-native init $appName

cd $appName

yarn add eslint -D

yarn add eslint-config-airbnb -D

yarn add eslint-plugin-import -D

yarn add eslint-plugin-jsx-a11y -D

yarn add eslint-plugin-react -D

yarn add babel-eslint

gnome-terminal -- react-native start

notify-send "The application is ready!"