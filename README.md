# Laravel Boilerplate

Series of scripts that can be used to setup an InertiaJS application.

## Usage

```
curl -s https://raw.githubusercontent.com/ohseesoftware/laravel-boilerplate-script/master/script.sh | sh
```

## Manual steps

- Create a new directory (not a git repo)
- Run the script via curl
- Add `InertiaServiceProvider` to `config/app.php`
- Update the `DB_DATABASE` in the `phpunit.xml` to the name of your test database
- Setup your `.env` file with your local development details
- Migrate your database with `php artisan migrate`
- Setup valet with `valet link`
