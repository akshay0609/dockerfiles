# Rails with postgres setup

In this I added docker-compose, Dockerfile, and env.
You just need to replace env file fields according to your requirement

### Run command

```sh
$ docker-compose run web bash
$bash/ bundle exec rails new . --force --database=postgresql
$ #Update database.yml by using config/database.yml
$ docker-compose -d up
$ docker-compose logs
$ docker-compose down
```
