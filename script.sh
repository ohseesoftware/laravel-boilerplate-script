echo "Tailwind preset with auth"
composer require laravel-frontend-presets/tailwindcss --dev
php artisan ui tailwindcss --auth

echo "Uninstall npm dependencies"
npm uninstall sass sass-loader

echo "Install npm dependencies"
npm install tailwindcss @ohseesoftware/tailwind-config @tailwindcss/ui @inertiajs/inertia-vue @inertiajs/inertia vue axios lodash vue-meta ziggy

echo "Install npm dev dependencies"
npm install --save-dev @babel/preset-env @babel/plugin-syntax-dynamic-import @babel/parser babel-eslint eslint eslint-config-prettier eslint-import-resolver-alias eslint-plugin-import eslint-plugin-prettier eslint-plugin-vue postcss-import postcss-nested prettier resolve-url-loader

echo "Install composer depdendencies"
composer require tightenco/ziggy squizlabs/php_codesniffer ohseesoftware/laravel-schema-list inertiajs/inertia-laravel

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
rm -rf resources/js/*
rm -rf resources/css/*

mkdir -p resources/js/pages resources/js/mixins

curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/resources/css/app.css --output resources/css/app.css
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/resources/js/app.js --output resources/js/app.js
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/resources/js/mixins/ZiggyMixin.js --output resources/js/mixins/ZiggyMixin.js
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/webpack.mix.js --output webpack.mix.js

echo "Setup backend resources"
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/files/app/Providers/InertiaServiceProvider.php --output app/Providers/InertiaServiceProvider.php

echo "Clean up"
npm install
npm run dev

echo ""
echo "All finished! Ensure you run the manual steps in the README!"
echo "https://github.com/ohseesoftware/laravel-boilerplate-script"
