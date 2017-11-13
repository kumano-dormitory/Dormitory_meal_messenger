# Do-meal

## Prerequisites

```
Node.js >= 6.x
SQLite >= 3.7.17
```

### If you don't have rbenv.

* In the case of Debian distribution.

  ```sh
  $ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  $ cd ~/.rbenv && src/configure && make -C src
  $ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  $ mkdir -p "$(rbenv root)"/plugins
  $ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
  $ rbenv install 2.4.2
  ```

  Add this to .bashrc.

  ```sh
  if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
  fi
  ```

  and

  ```sh
  $ source .bashrc
  ```

* In the case of Mac OS

  ```sh
  $ brew install ruby-build
  $ brew install rbenv
  $ rbenv install 2.4.2
  ```
  
  Add this to .bash_profile.
  ```sh
  if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
  fi
  ```
  and
  
  ```sh
  $ source .bash_profile
  ```

### If you don't have bundler

```sh
$ rbenv local 2.4.2
$ gem install bundler
```

## Install

```sh
$ git clone git@github.com:kumano-dormitory/Dormitory_meal_messenger.git
$ cd Dormitory_meal_messenger
$ git checkout -b rails origin/rails
$ bundle install --path vendor/bundle
```

## Datebase
|meals table| |
| ----- | ----- |
| date | date |
| time-zone | string |
| menu | string |
| single-ticket-price | int |
| multi-ticket-price | int |
| soldout | bool |


record table
| | |
|meal-id| reference|
|time| time|
|left| int|

