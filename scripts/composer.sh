#!/bin/sh

echo "Installing composer"
EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php  --quiet
rm composer-setup.php

echo "Moving composer to /usr/local/bin/composer"
sudo mv composer.phar /usr/local/bin/composer
sudo chmod 755 /usr/local/bin/composer


echo "Installing global composer packages"
composer global require phpunit/phpunit
composer global require friendsofphp/php-cs-fixer
composer global require laravel/installer
composer global require laravel/valet

echo "Updating PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

echo "Setting up Laravel Valet"
valet install
valet tld valet
