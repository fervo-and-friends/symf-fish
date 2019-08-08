function dcomposer
    if test -f .maincontainer
        set -lx COMPOSE_API_VERSION "auto"
        set -lx __COMPOSER_AUTH (cat ~/.composer/auth.json)
        docker-compose exec -e COMPOSER_AUTH="$__COMPOSER_AUTH" -e COMPOSER_MEMORY_LIMIT=4G (cat .maincontainer) composer $argv
    else
        echo "Could not find .maincontainer file"
    end
end
