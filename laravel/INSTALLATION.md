# Installation 

### Windows

1. Download the [Composer-Setup.exe](https://getcomposer.org/Composer-Setup.exe) and run it.

1. When it asks for the path to `php.exe` file, select the `path/to/server/php/php.exe` (server can be **XAMPP**, **WampServer** etc.).

1. Close all the explorer windows and open command prompt.

1. Navigate to the `htdocs` directory and run the following command (this will download framework in your project):
   ```zsh
   composer create-project --prefer-dist laravel/laravel your-project-name
   ```

### Useful links

1. [How to Install Laravel on Windows 10](https://www.youtube.com/watch?v=bWPPDjpWgW8)
