# Kong, Konga With Postgres

Before start make sure you installed docker, docker-compose and curl on your PC.
In this I added docker-compose, Dokcerfile, and env.

make the change in .env according to the requirement 
# Run Command 
```sh
$ ./setup.sh
```
# Create key Auth
Run all command give in create_key_auth file
# Konga
1. login to the konga on http://localhost:1337.
2. create connection by key auth.
3. add connection_name, URL http://kong:8001, and add key get by Create key Auth step.
