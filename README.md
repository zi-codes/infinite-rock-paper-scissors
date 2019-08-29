# Infinite Rock-Paper-Scissors

![Image screenshot](/rps.gif)

Originally built for Makers (bootcamp) weekend challenge. This web app extends the basic mathematical principles behind any iteration of the 'Rock-Paper-Scissors' game to build a customisable game with any number, n, of weapons, given that n is an odd number 3 or greater. Each weapon will have equal chance of winning.

## Run it yourself

#### MacOS

Prerequisites:

- Ruby
- Bundler

In terminal:

```sh
$ git clone https://github.com/zi-codes/codex-rps.git
$ cd codex-rps
$ bundle
$ rackup app/config.ru
```

In web browser:

```sh
http://localhost:9292/
```

#### To run test suite

In terminal:

```sh
$ bundle install rspec
$ rspec
```

## Codex Z

This repository is part of the "Codex Z" series of my more abstract and puzzly projects. See the rest of them at https://github.com/users/zi-codes/projects/1
