function dcomposer
    if test -f .phpcontainer
        set -lx COMPOSE_API_VERSION "auto"
        set -lx __COMPOSER_AUTH (cat ~/.composer/auth.json)
        docker-compose exec -e COMPOSER_AUTH="$__COMPOSER_AUTH" -e COMPOSER_MEMORY_LIMIT=4G (cat .phpcontainer) composer $argv
    else
        echo "Could not find .phpcontainer file"
    end
end
