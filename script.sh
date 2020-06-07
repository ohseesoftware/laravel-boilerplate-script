# uninstall npm dependencies

npm uninstall sass sass-loader

# install npm dependencies

npm install @tailwindcss/ui @inertiajs/inertia-vue @inertiajs/inertia vue axios lodash vue-meta ziggy

# install npm dev depdendencies

npm install --save-dev @babel/preset-env @babel/plugin-syntax-dynamic-import @babel/parser babel-eslint eslint eslint-config-prettier eslint-import-resolver-alias eslint-plugin-import eslint-plugin-prettier eslint-plugin-vue postcss-import postcss-nested prettier resolve-url-loader

# install composer depdendencies

composer require tightenco/ziggy squizlabs/php_codesniffer ohseesoftware/laravel-schema-list laravel/ui inertiajs/inertia-laravel

# copy phpcs.xml from here:

https://github.com/ohseesoftware/phpcs-config/blob/master/phpcs.xml

# add PrettierPHPFixer.php from here:

curl https://raw.githubusercontent.com/ohseesoftware/prettier-php-fixer/master/PrettierPHPFixer.php --output PrettierPHPFixer.php

# add .prettierrc from here:

curl https://raw.githubusercontent.com/ohseesoftware/prettier-config/master/.prettierrc --output .prettierrc

# setup frontend resources

rm -rf resources/js/*
rm -rf resources/css/*

mkdir -p resources/js/pages resources/js/mixins

curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/app.css --output resources/css/app.css
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/app.js --output resources/js/app.js
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/ZiggyMixin.js --output resources/js/mixins/ZiggyMixin.js
