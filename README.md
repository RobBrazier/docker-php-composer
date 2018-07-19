# docker-php-composer [![Build status](https://badge.buildkite.com/4b3e2548ef098036a3b6aaf986caceede9f4b8d255fe9b01aa.svg?branch=master)](https://buildkite.com/robbrazier/docker-php-composer) [![Docker Pulls](https://img.shields.io/docker/pulls/robbrazier/php.svg)](https://hub.docker.com/r/robbrazier/php/)
### A Docker Image with [composer](https://getcomposer.org/) and [prestissimo](https://github.com/hirak/prestissimo) preinstalled

## Usage
```bash
docker pull robbrazier/php:${version}
```
There is a tag for each directory contained within this repository (see [here](https://hub.docker.com/r/robbrazier/php/tags/) for a full list of tags)

## Environment Variables
To avoid user permission errors when running this container with a mounted volume, there are two environment variables that can be set:
```bash
PUID=1001 # User ID [default: root]
PGID=1001 # Group ID [ default: root]
```

Usually this will be set to the User ID and Group ID of your current user.

On MacOS/Linux this can be found by running
```bash
id -u # User ID
id -g # Group ID
```
I don't have a Windows machine, so am not 100% sure what the values would be for Windows (hopefully someone can assist with this :smile:)

## Entrypoint
This Image uses the same entrypoint and command as the official `php` image (i.e. if you just run `docker run -it robbrazier/php`, a PHP REPL will open)

## Default Working Directory
The default working directory is set to `/var/app`, however this can be easily modified.

## Automated Builds
This repository is set to build every month, so that the images are updated with the latest versions of composer, prestissimo and php