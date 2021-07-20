# symf-fish

Fish support for Symfony developer shortcuts when using Docker.

## Requirements

* Docker Compose >=1.18.0

## Install

With [fisherman]

```
fisher add fervo-and-friends/symf-fish
```

## Usage

First, make sure there's `.phpcontainer` and `.nodecontainer` files in the same directory as your `docker-compose.yaml` file. These should contain the Docker Compose names of the containers in which php and node commands respectively should be executed.

### docker-compose exec php
```fish
$ dcep ls
```

### docker-compose run php
```fish
$ dcrp ls
```

### docker-compose exec node
```fish
$ dcen ls
```

### docker-compose run node
```fish
$ dcrn ls
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

### Node
```fish
$ dnode
```

### npm
```fish
$ dnpm
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
