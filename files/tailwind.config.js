const config = require('@ohseesoftware/tailwind-config');
const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  ...config,
  extend: {
    theme: config.theme,
    fontFamily: {
      sans: ['Inter var', ...defaultTheme.fontFamily.sans],
    },
  },
  plugins: [
    require('@tailwindcss/ui')({
      layout: 'sidebar',
    })
  ],
};
