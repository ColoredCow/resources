# Virtual Host Guide

## Virtual Host with XAMPP

1. Navigate to `C:\xampp\apache\conf\extra`
1. Open `httpd-vhosts.conf` and append following lines of code at the end:
   ```
   NameVirtualHost *:80
   <VirtualHost sitename.test:80>
       DocumentRoot "<PROJECT PATH>"
       ServerName sitename.test
       ServerAlias www.sitename.test
       
       <Directory "<PROJECT PATH>">
           Require all granted
       </Directory>
   </VirtualHost>
   ```

1. Replace `<PROJECT PATH>` with your project path. An example path for laravel project (in htdocs) is given below
   ```
   C:\xampp\htdocs\projectfolder\public
   ```

## Enable mod_rewrite module

1. Open the httpd.conf file in 
   ```
   C:\xampp\apache\conf\extra
   ```

1. Look for `LoadModule rewrite_module modules/mod_rewrite.so` and uncomment it by removing `;` at the start.

## Setting local domain with hosts file

1. Navigate to `C:\Windows\System32\Drivers\etc`
1. Open the hosts file with Administrator privileges
1. Append the line at the bottom
   ```
   127.0.0.1 www.site.test site.test
   ```
