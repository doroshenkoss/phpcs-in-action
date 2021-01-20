FROM php:7.1-alpine

LABEL "com.github.actions.name"="Serjio phpcs"
LABEL "com.github.actions.description"="check php coding standards"

RUN wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -O phpcs \
    && chmod a+x phpcs \
    && mv phpcs /usr/local/bin/phpcs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]