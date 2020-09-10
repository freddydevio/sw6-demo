# Shopware 6 demo case setup

## Setup
```
Download Shopware to the www directory
$ wget https://www.shopware.com/en/Download/redirect/version/sw6/file/install_v6.3.1.0_30a2e48bba09fcdca287d2062aa73b6d25de7be8.zip -P $PWD/www
Unpack zip
$ unzip $PWD/www/install_v6.3.1.0_30a2e48bba09fcdca287d2062aa73b6d25de7be8.zip -d $PWD/www
Change permissions
$ chown -R www-data:www-data www
Build docker setup
$ docker-compose up -d
Setup shopware ...
```
