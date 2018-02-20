function dcr
    if test -f .maincontainer
        docker-compose run (cat .maincontainer) $argv
    else
        echo "Could not find .maincontainer file"
    end
end