# Quick Start

## Prerequisite

### Dependency
1. XAMPP / WAMPP server.
2. Composer (dependency manager for php)
3. Node and npm

_Please refer to [Installation Guide](../laravel/installation/README.md) if you don't have these dependencies installed._

### Database

> _You are absolutely free to use any UI-based tool, like MySQL Workbench, for creating a new database._

1. `mysql -uroot -p`

   _This command will prompt you to enter the user password. Just hit enter if you've not set one._

1. `create database awesome_app_db`

## Starting the Laravel app

#### Getting the app up and running

1. `laravel new my-awesome-app`
1. `cd my-awesome-app`
1. Open the `.env` file in your favorite code editor and make the following updates:

   1. Change `APP_NAME=Laravel` to `APP_NAME="Awesome App"`
   1. Change `DB_DATABASE=laravel` to `DB_DATABASE=awesome_app_db`

1. Laravel used to cache project config for better performance. You nee d to run the following command to flush the cache other wise the changes won't be reflected.

   ```php artisan config:cache```
1. `php artisan serve`
   
   _This will output an IP address on the command prompt, something like `http://127.0.0.1:8000`. This address can be pasted in the browser to access the Laravel app._

#### Basic authentication

1. `composer require laravel/ui`
1. `php artisan ui vue --auth`
1. `npm install && npm run dev`
1. `php artisan migrate`

This is all needed to set up basic authentication in a Laravel application. Open up the app in a browser, and at the top-right, there will be links to `Login` and `Register`.  They work too! Try to register and login.
