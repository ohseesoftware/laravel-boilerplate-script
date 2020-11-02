const config = require('@ohseesoftware/tailwind-config');
const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  purge: [
    './vendor/laravel/jetstream/**/*.blade.php',
    './storage/framework/views/*.php',
    './resources/views/**/*.blade.php',
    './resources/js/**/*.vue',
  ],

  extend: {
    theme: config.theme,

    fontFamily: {
      sans: ['Nunito', ...defaultTheme.fontFamily.sans],
    },
  },

  plugins: [
    require('@tailwindcss/ui')
  ],
};
