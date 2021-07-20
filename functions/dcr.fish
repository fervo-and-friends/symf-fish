function dcr
    if test -f .phpcontainer
        docker-compose run (cat .phpcontainer) $argv
    else
        echo "Could not find .phpcontainer file"
    end
end