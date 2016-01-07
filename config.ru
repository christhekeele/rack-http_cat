require 'rack'
require 'rack/http_cat'
require 'rack/lobster'

use Rack::HTTPCat
run Rack::Lobster.new
