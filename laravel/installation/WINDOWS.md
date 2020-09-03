# Installation

### Requirements

1. XAMPP / WAMPP server.
1. Node and npm (`To be added`).

### Installing XAMPP for Laravel

1. [Download XAMPP](https://www.apachefriends.org/download.html) (choose PHP version [required for the latest Laravel version](https://laravel.com/docs/master#server-requirements)).
1. Run the installer and select Apache, MySQL and phpMyAdmin.
1. It’s recommended to make the installation in `C:\` to avoid issues with Windows User permissions (or the drive where your Windows is installed).

### Setting up PHP and MySql from Windows CMD

1. Open `Advanced System Settings` (`System Properties -> Advanced`).
1. Open `Environment Variables`.
1. On the top window select `Path` and click on `Edit`.
1. In the new window click on `New`.
1. Enter the path to XAMPP’s PHP `C:\xampp\php`.
1. Click on `New` again and enter MySQL’s Path `C:\xampp\mysql\bin`.

### Setting up Composer

1. Download the [Composer-Setup.exe](https://getcomposer.org/Composer-Setup.exe) and run it.
1. Place the installer and run it from the added to `Path` directory – `C:\xampp\php`.
1. Now close your all explorer windows and run `cmd`.

### Install Laravel with Composer

1. Go to to the XAMPP's `htdocs` folder (generally located at `C:\xampp\htdocs`).

1. Install a new Laravel project by running following command:
   ```zsh
   composer create-project --prefer-dist laravel/laravel yourprojectname
   ```

### Create a MySQL database

#### Option 1

If you have some tools like [TablePlus](https://tableplus.com/), [phpMyAdmin](https://www.phpmyadmin.net/), [MySQL Workbench](https://www.mysql.com/products/workbench/), you can go ahead and create a new database.

#### Option 2

Create new database from CMD using following steps:
1. Open command prompt.
1. Access the MySQL. The default password would be empty or `root`:
   ```zsh
   mysql -u root -p
   ```

1. Create new database:
	```mysql
	CREATE DATABASE database_name;
	```

### Setup `.env`

1. Go to `C:\xampp\htdocs\yourprojectname`.
1. Duplicate the file `.env.example` with name `.env`.
1. Add your database name and credentials.

### Install dependencies

```zsh
composer install
npm install
```

### Add an application key

```zsh
php artisan key:generate
```

### Start the server

```zsh
php artisan serve
```

### Create a virtual host
1. Please refer to [Virtual Host Guide for Windows](../../virtualhost/WINDOWS.md)

### Useful links

1. [How to Install Laravel on Windows 10](https://www.youtube.com/watch?v=bWPPDjpWgW8)

