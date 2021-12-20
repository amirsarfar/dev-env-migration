
# You can change version of nodejs or add another version here. Check dockerhub for other available versions

alias node14='docker run -it --rm -e HOME:$HOME -v $HOME:$HOME -v `pwd`:/usr/app/ -w /usr/app node:14-slim node'

alias npm14='docker run -it --rm -e HOME:$HOME -v $HOME:$HOME -v `pwd`:/usr/app/ -w /usr/app node:14-slim npm'

alias composer2='docker run --rm -it -v `pwd`:/app -v ${COMPOSER_HOME:-$HOME/.composer}:tmp composer:2'

alias php74='docker run -it --rm -v `pwd`:/usr/app/ -w /usr/app amirsarfar/php:74-cli' # Just in case you need php-cli itself

alias pas74='docker run -it --rm -p 8787:8787 --network="db_tools_mynet" -v `pwd`:/usr/app/ -w /usr/app amirsarfar/php:74-cli php artisan serve --host=0.0.0.0 --port=8787' # php artisan serve (php7.4)

# In all these docker aliases be sure to check ports and volumes that you need for a command. It may differ from mine