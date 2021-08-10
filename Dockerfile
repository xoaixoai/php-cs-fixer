FROM php:8.0-alpine

LABEL "com.github.actions.name"="PHP-CS-Fixer"
LABEL "com.github.actions.description"="Auto fix coding style for PHP files"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/xoaixoai/php-cs-fixer"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Phai Nguyen <developer.phainv@gmail.com>"

RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v3.0.0/php-cs-fixer.phar -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
