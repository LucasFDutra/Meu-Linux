#! /bin/bash
npm init -y

yarn add eslint -D
yarn add eslint-config-airbnb -D
yarn add eslint-plugin-import -D
yarn add eslint-plugin-jsx-a11y -D
yarn add eslint-plugin-react -D
yarn add babel-eslint

yarn add express
yarn add nodemon -D
yarn add cors

wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.editorconfig
wget https://raw.githubusercontent.com/LucasFDutra/Ambiente-React-E-React-native-Com-ESlint-Airbnb/master/.eslintrc.json

mkdir src
>src/routes.js
>src/server.js

mkdir src/controllers
mkdir src/models