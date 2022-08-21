# Psychotherapy app

## Admin
### Account
```
admin@gmail.com
```
### Password
```
123456789
```
## .env
> Please add this to run 
```
ADMIN_EMAIL=youremail@gmail.com
QUEUE_DRIVER=database
QUEUE_CONNECTION=database
FRONT_END=https://yourfrontend.com 
```

## Database
[database](/psychotherapy.sql)
## Queue
> run to start queue send mail
```
php artisan queue:work
```
