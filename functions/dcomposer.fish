function dcomposer
    if test -f .maincontainer
        set -lx COMPOSE_API_VERSION "auto"
        docker-compose exec -e COMPOSER_AUTH=(jq -c . < ~/.composer/auth.json) (cat .maincontainer) composer $argv
    else
        echo "Could not find .maincontainer file"
    end
end