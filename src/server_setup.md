# Server Setup

Our server needs to have the following softwares:

  1. [Erlang and Elixir](http://elixir-lang.org/install.html)
  2. [Git](https://help.ubuntu.com/lts/serverguide/git.html)
  3. [Postgresql](https://help.ubuntu.com/community/PostgreSQL)
  4. [nodejs](https://nodejs.org/en/download/package-manager/)
  5. [Nginx](TODO)

*> These commands need to be executed on the server*

```sh
## commands to be executed on our server

# 1. elixir and erlang
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir

# 2. git
sudo apt-get install git

# 3. postgresql
sudo apt-get install postgresql postgresql-contrib

# 4. nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### User Setup

We'll be running our app under the user called `pastex`. So, we first need
to create that user.

*> These commands need to be executed on the server*
```sh
## commands to be executed on our server
APP_USER=pastex

# create parent dir for our home
sudo mkdir -p /opt/www
# create the user
sudo useradd --home "/opt/www/$APP_USER" --create-home --shell /bin/bash $APP_USER
# create the postgresql role for our user
sudo -u postgres createuser --echo --no-createrole --no-superuser --createdb $APP_USER
```

