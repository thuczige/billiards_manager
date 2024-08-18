# README

This README would normally document whatever steps are necessary to get the application up and running.

## System dependencies

- Ruby 3.3.4

- Rails 7.2.0

- Mysql 9.0.1

- Docker

## Configuration

```
# config/master.key

7eda3799ef76ab1180c0e94c42303d5d
```

## Development instructions

### How to run the project

#### 1. Alias ​​command

```shell
echo "alias dcdev='docker-compose -f docker-compose.development.yml'" >> ~/.bashrc
echo "alias dcdev='docker-compose -f docker-compose.development.yml'" >> ~/.zshrc
source ~/.bashrc
source ~/.zshrc
```

#### 2. Build and run

```shell
dcdev build
dcdev up -d
dcdev exec web bash -c "rails db:prepare"
```

http://localhost:9000/

### How to run the test suite

```shell
dcdev exec web bash -c "rspec"
dcdev exec web bash -c "rspec spec/path/to/file_spec.rb"
```

### Debugging

Put the keyword `debugger` where you want to check

```ruby
def index
  debugger
end
```

```
dcdev attach web
```

Reload the page to check your code

[Control Flow While Debugging](https://github.com/ruby/debug?tab=readme-ov-file#control-flow)

### Lint code for consistent style

```shell
dcdev exec web bash -c "bin/rubocop"
```

## Services

- Cronjob

- Sidekiq

## Deployment instructions

- TODO
