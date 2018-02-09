curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
chown +x phpcs.phar
mv phpcs.phar phpcs
php phpcs -h
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chown +x phpcbf.phar
mv phpcbf.phar phpcbf
php phpcbf -h
git clone -b master https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git ~/wpcs
php phpcs --config-set installed_paths ~/wpcs