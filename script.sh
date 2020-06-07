# tailwind preset with auth
composer require laravel-frontend-presets/tailwindcss --dev
php artisan ui tailwindcss --auth

# uninstall npm dependencies
npm uninstall sass sass-loader

# install npm dependencies
npm install tailwindcss @ohseesoftware/tailwind-config @tailwindcss/ui @inertiajs/inertia-vue @inertiajs/inertia vue axios lodash vue-meta ziggy

# install npm dev dependencies
npm install --save-dev @babel/preset-env @babel/plugin-syntax-dynamic-import @babel/parser babel-eslint eslint eslint-config-prettier eslint-import-resolver-alias eslint-plugin-import eslint-plugin-prettier eslint-plugin-vue postcss-import postcss-nested prettier resolve-url-loader

# install composer depdendencies
composer require tightenco/ziggy squizlabs/php_codesniffer ohseesoftware/laravel-schema-list laravel/ui inertiajs/inertia-laravel

# tailwind.config.js
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/tailwind.config.js --output tailwind.config.js

# phpcs.xml
curl https://github.com/ohseesoftware/phpcs-config/blob/master/phpcs.xml --output phpcs.xml

# phpunit.xml
curl https://raw.githubusercontent.com/ohseesoftware/prettier-config/master/phpunit.xml --output phpunit.xml

# PrettierPHPFixer.php
curl https://raw.githubusercontent.com/ohseesoftware/prettier-php-fixer/master/PrettierPHPFixer.php --output PrettierPHPFixer.php

# .prettierrc
curl https://raw.githubusercontent.com/ohseesoftware/prettier-config/master/.prettierrc --output .prettierrc

# setup frontend resources
rm -rf resources/js/*
rm -rf resources/css/*

mkdir -p resources/js/pages resources/js/mixins

curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/app.css --output resources/css/app.css
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/app.js --output resources/js/app.js
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/ZiggyMixin.js --output resources/js/mixins/ZiggyMixin.js
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/webpack.mix.js --output webpack.mix.js

# setup backend resources
curl https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/InertiaServiceProvider.php --output app/Providers/InertiaServiceProvider.php

# clean up
npm install
npm run dev

echo "All finished! Ensure you run the manual steps in the README!"
