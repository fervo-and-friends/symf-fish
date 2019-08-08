# symf-fish

Fish support for Symfony developer shortcuts when using Docker.

## Requirements

* Docker Compose >=1.18.0

## Install

With [fisherman]

```
fisher fervo-and-friends/symf-fish
```

## Usage

First, make sure there's `.maincontainer` file in the same directory as your `docker-compose.yaml` file. This should contain the Docker Compose name of the container in which the commands should be executed.

### docker-compose exec
```fish
$ dce ls
```

### docker-compose run
```fish
$ dcr ls
```

### Symfony console
```fish
$ dsf help
```

### Composer
> Note: Your auth.json will be exported to Docker. Make sure your auth.json is located in ~/.composer/auth.json.
```fish
$ dcomposer
```

### Behat
```fish
$ dbehat
```

### PHPUnit
```fish
$ dphpunit
```

### PHPSpec
```fish
$ dphpspec run
```

[fisherman]: https://github.com/fisherman/fisherman
