# Rails with postgres setup

In this I added docker-compose, Dockerfile, and env.
You just need to replace following fields with your requirements
- <%= APP-NAME %>
- <%= DATABASE-USERNAME %>
- <%= DATABASE-PASSWORD %>
- <%= DATABASE-NAME %>

### Run command

```sh
$ docker-compose -d up
$ docker-compose logs
$ docker-compose down
```