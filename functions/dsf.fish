function dsf
    if test -f bin/console
        dce php bin/console $argv
    else if test -f app/console
        dce php app/console $argv
    else if test -f (composer config bin-dir)/console
        dce php ./(composer config bin-dir)/console $argv
    else
        echo "Could not find Symfony console"
    end
end