echo "Installing Laravel"
laravel new .

echo "Install composer depdendencies"
composer require laravel/jetstream tightenco/ziggy squizlabs/php_codesniffer ohseesoftware/laravel-schema-list 

echo "Setup Inertia"
php artisan jetstream:install inertia --teams
composer require inertiajs/inertia-laravel
php artisan inertia:middleware

echo "Install npm dependencies"
npm install @ohseesoftware/tailwind-config vue@next vue-meta ziggy

echo "Install npm dev dependencies"
npm install --save-dev @babel/core @babel/preset-env @babel/plugin-syntax-dynamic-import @babel/parser babel-eslint eslint eslint-config-prettier eslint-import-resolver-alias eslint-plugin-import eslint-plugin-prettier eslint-plugin-vue postcss-import@12 postcss-nested@4 prettier resolve-url-loader

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
