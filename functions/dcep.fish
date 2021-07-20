function dcep
    if test -f .phpcontainer
        docker-compose exec (cat .phpcontainer) $argv
    else
        echo "Could not find .phpcontainer file"
    end
end