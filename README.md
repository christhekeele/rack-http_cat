# Rack::HTTPCat

Adds an easter-egg link to a status cat in the headers of your Rack application.

## Installation

Add to your Gemfile:

```ruby
gem 'rack-http_cat'
```

And then execute:

```sh
$ bundle install
```

Or install it globally as:

```sh
$ gem install rack-http_cat
```

## Usage

`require 'rack/http_cat'` and `use Rack::HTTPCat` in your config.ru (or whatever your application's entry point is).

You should see something like `HTTP-Cat: https://http.cat/200` in the headers of a successful page load.

## Notes

Without configuration Rack will handle 500 errors outside of your app and inside Rack itself, so you won't see a cat in your headers.
