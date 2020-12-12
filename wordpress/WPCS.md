# Setting up WordPress Coding Standards on your editor in Windows.

This document covers how to setup WordPress coding standards on your editor in Windows.

# Installation

### Requirements

1. Visual Studio Code
1. PHP
1. Composer

### Installing Visual Studio Code

1. [Download Visual Studio Code](https://code.visualstudio.com/Download)
1. Run the installer.

### Installing PHPCodesniffer globally:

1. Open Terminal and move to directory where composer is installed i.e. `C:\Users\username\AppData\Roaming\Composer`.
1. Install [php_codesniffer](https://packagist.org/packages/squizlabs/php_codesniffer) package by running `composer require squizlabs/php_codesniffer` on your composer directory.
1. Add `C:\Users\username\AppData\Roaming\Composer\vendor\squizlabs\php_codesniffer\bin` to your `environment variables PATH`.
1. Once install, verify the installation by running `phpcs --version` on the terminal.

### Installing WPCS globally:

1. Install [wpcs](https://packagist.org/packages/wp-coding-standards/wpcs) package by running `composer require wp-coding-standards/wpcs` on your composer directory.

### Installing PHPCompatibility globally:

1. Move to the `vendor` directory in your composer directory and clone [PHPCompatibility](https://github.com/PHPCompatibility/PHPCompatibility) package by running `git clone https://github.com/wimg/PHPCompatibility.git`.

### Link WPCS and PHPCompatibility standards with phpcs:

1. Move to the `composer` directory and link wpcs and phpcompatibility standards with phpcs by running `phpcs --config-set installed_paths C:\Users\username\AppData\Roaming\Composer\vendor\PHPCompatibility,C:\Users\username\AppData\Roaming\Composer\vendor\wp-coding-standards\wpcs`.
1. Verify linking by running `phpcs -i`.

### Installing extensions for VS Code Editor:
1. Install [phpcs](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs) extension.
1. Install [phpcbf](https://marketplace.visualstudio.com/items?itemName=persoderlind.vscode-phpcbf) extension.


### Configuring the settings for VS Code:

1. Open `settings.json` and add following lines to it:
    ```
    "phpcs.enable": true,
    "phpcs.executablePath": "C:\\Users\\arcenmities\\AppData\\Roaming\\Composer\\vendor\\bin\\phpcs.bat",
    "phpcs.standard": "WordPress",
    "phpcbf.enable": true,
    "phpcbf.documentFormattingProvider": true,
    "phpcbf.onsave": true,
    "phpcbf.executablePath": "C:\\Users\\arcenmities\\AppData\\Roaming\\Composer\\vendor\\bin\\phpcbf.bat",
    "phpcbf.standard": "WordPress",
    "[php]": {
        "editor.defaultFormatter": "persoderlind.vscode-phpcbf"
    },
    ```
    