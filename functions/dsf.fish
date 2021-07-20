function dsf
    if test -f bin/console
        dcep php bin/console $argv
    else if test -f app/console
        dcep php app/console $argv
    else if test -f (composer config bin-dir)/console
        dcep php ./(composer config bin-dir)/console $argv
    else
        echo "Could not find Symfony console"
    end
end