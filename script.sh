echo "Installing Laravel with Jetstream"
laravel new --jet ./
php artisan jetstream:install inertia --teams

echo "Install composer depdendencies"
composer require tightenco/ziggy squizlabs/php_codesniffer ohseesoftware/laravel-schema-list inertiajs/inertia-laravel

echo "Install npm dependencies"
npm install @ohseesoftware/tailwind-config vue-meta ziggy @inertiajs/inertia-vue @inertiajs/progress

echo "Install npm dev dependencies"
npm install --save-dev @babel/preset-env @babel/plugin-syntax-dynamic-import @babel/parser babel-eslint eslint eslint-config-prettier eslint-import-resolver-alias eslint-plugin-import eslint-plugin-prettier eslint-plugin-vue postcss-import postcss-nested prettier resolve-url-loader

echo "Setup Inertia"
php artisan inertia:middleware

echo "tailwind.config.js"
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/tailwind.config.js --output tailwind.config.js

echo "phpcs.xml"
curl -s https://raw.githubusercontent.com/ohseesoftware/phpcs-config/master/phpcs.xml --output phpcs.xml

echo "phpunit.xml"
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/phpunit.xml --output phpunit.xml

echo "PrettierPHPFixer.php"
curl -s https://raw.githubusercontent.com/ohseesoftware/prettier-php-fixer/master/PrettierPHPFixer.php --output PrettierPHPFixer.php

echo ".prettierrc"
curl -s https://raw.githubusercontent.com/ohseesoftware/prettier-config/master/.prettierrc --output .prettierrc

echo "Setup frontend resources"
mkdir -p resources/js/Mixins

curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/resources/js/app.js --output resources/js/app.js
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/resources/js/mixins/ZiggyMixin.js --output resources/js/Mixins/ZiggyMixin.js
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/webpack.mix.js --output webpack.mix.js
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/babel.config.js --output babel.config.js

echo "Setup backend resources"
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/app/Providers/InertiaServiceProvider.php --output app/Providers/InertiaServiceProvider.php

echo "Clean up"
npm install
npm run dev

echo ""
echo "All finished! Ensure you run the manual steps in the README!"
echo "https://github.com/ohseesoftware/laravel-boilerplate-script"
