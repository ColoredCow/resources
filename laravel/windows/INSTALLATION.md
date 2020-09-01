# Installation

### Requirements
1. XAMPP / WAMPP server.
2. Node and npm (To be added)

### Installing XAMPP for Laravel
1. Download XAMPP for Windows from their official site: https://www.apachefriends.org/download.html
2. Choose PHP version as required by latest laravel version.
3. Run the installer and select Apache, MySQL and phpMyAdmin
4. It’s recommended to make the installation in C:\ to avoid issues with Windows User permissions (or the drive where your Windows is installed)


### Setting up PHP and MySql from Windows CMD
1. Open Advanced System Settings (System Properties -> Advanced)
2. Open Environment Variables
3. On the top window select Path and click on Edit
4. In the new window click on New
5. Enter the path to XAMPP’s PHP `C:\xampp\php`.
6. Click on New again and enter MySQL’s Path `C:\xampp\mysql\bin`.



### Setting up composer

1. Download the [Composer-Setup.exe](https://getcomposer.org/Composer-Setup.exe) and run it.
2. Place the installer and run it from the added to Path directory – C:\xampp\php
**Note:** Now close your all explorer windows and run `cmd .`

### Install laravel with composer
1. Got to the htdocs situated at `C:\xampp\htdocs`.
2. Install new Laravel project by running following command.
```zsh
composer create-project --prefer-dist laravel/laravel yourprojectname
```

### Creating MySQL Database
**Option 1:** If you have some tools like [TablePlus](https://tableplus.com/), [phpMyAdmin](https://www.phpmyadmin.net/), [MySQL workbench](https://www.mysql.com/products/workbench/), please go a head and create a new database.
**Option 2:** Create new database from CMD using following steps
1. Open the CMD
2. Access the MySQL. The default password would be empty or `root`
```zsh
mysql -u root -p
```
3. Create new databae
```zsh
CREATE DATABASE databasename;
````

### Setting up .env
1. Go to `C:\xampp\htdocs\yourprojectname`.
2. Duplicate the file `.env.example` with name `.env`.
3. Add your database name and credentials.


### Install dependencies:
```zsh
composer install
npm install
```

### Run the following command to add a key
```zsh
php artisan key:generate
```

### Run following command to start server
```zsh
php artisan serve
```

### Create Virtual host
`to be added`


### Other usefull links:
1. https://www.youtube.com/watch?v=bWPPDjpWgW8

