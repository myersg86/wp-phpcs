#!/bin/bash
set -ex

chmod +x ./wp-phpcs.sh
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
chmod +x phpcs.phar
mv phpcs.phar phpcs
php phpcs -h
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod +x phpcbf.phar
mv phpcbf.phar phpcbf
php phpcbf -h
git clone -b master https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git ~/wpcs
php phpcs --config-set installed_paths ~/wpcs
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar wp
cd html
ln -s ~/wp wp
ln -s ~/phpcs phpcs
ln -s ~/phpcbf phpcbf
