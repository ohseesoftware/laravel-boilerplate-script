const mix = require('laravel-mix');
const tailwindcss = require('tailwindcss');
const path = require('path');

mix
  .js('resources/js/app.js', 'public/js')
  .postCss('resources/css/app.css', 'public/css', [
    require('postcss-import'),
    tailwindcss('./tailwind.config.js'),
    require('postcss-nested'),
  ])
  .options({
    processCssUrls: false,
    terser: {
      extractComments: false,
    },
  })
  .webpackConfig(() => {
    return {
      output: {
        chunkFilename: 'js/[name].js?id=[chunkhash]',
      },
      resolve: {
        alias: {
          '@': path.resolve('resources/js'),
          ziggy: path.resolve('vendor/tightenco/ziggy/dist/js/route.js'),
        },
      },
    };
  });

if (mix.inProduction()) {
  mix.version();
}
