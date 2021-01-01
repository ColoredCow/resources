# Queue Worker

To execute the Laravel queues, we need to run `php artisan queue:work` command to execute the queues. But in production, a `queue:work` process may stop running for a variety of reasons, such as an exceeded worker timeout or running command `queue:restart`.
So, in production, we need a way to keep this processes running to process our project's queues.

For this, we are using process monitor `Supervisor` (available for the Linux environments) that can detect when your `queue:work` processes exit and automatically restart them.

## Step 1: Installing Supervisor

### Ubuntu
```
sudo apt-get install supervisor
```

### Amazon Linux AMI
```
sudo yum install supervisor
```

If you got error `No package epel-release available.` You may need to run the following command.
```
sudo amazon-linux-extras install epel
```

## Step 2: Configuration

#### Go to the config directory
```
cd /etc/supervisor/conf.d
```

#### Create your project config file
```
touch project-name.conf
```

#### Make the required changes in config below, paste it to the above config file and save your changes. Please make sure your user have right permissions.
```
[program:project-name]
process_name=%(program_name)s_%(process_num)02d
command=php /var/www/html/project-name/artisan queue:work --sleep=3 --tries=5 --max-time=3600
autostart=true
autorestart=true
stopasgroup=true
killasgroup=true
user=your-user
numprocs=1
redirect_stderr=true
stdout_logfile=/var/www/html/project-name/storage/logs/worker.log
stopwaitsecs=3600
```

## Step 3: Starting Supervisor

#### Read new changes if any
```
sudo supervisorctl reread
```

#### Update the new configuration in the supervisor process
```
sudo supervisorctl update
```

#### Start supervisor program
```
sudo supervisorctl start project-name:*
```
