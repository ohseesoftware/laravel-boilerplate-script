# Laravel Boilerplate

Series of scripts that can be used to setup an InertiaJS application.

## Usage

```
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/script.sh | sh
```

## Manual steps

- Install Laravel on your own: `laravel new PROJECT_NAME`
- Update the `DB_DATABASE` in the `phpunit.xml` to the name of your test database
- Setup your `.env` file with your local development details
- Migrate your database with `php artisan migrate`
- Setup valet with `valet link`
