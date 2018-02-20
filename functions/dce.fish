function dce
    if test -f .maincontainer
        docker-compose exec (cat .maincontainer) $argv
    else
        echo "Could not find .maincontainer file"
    end
end