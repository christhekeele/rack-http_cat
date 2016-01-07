# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/http_cat'

Gem::Specification.new do |spec|
  spec.name          = "rack-http_cat"
  spec.version       = Rack::HTTPCat::VERSION
  spec.authors       = ["Chris Keele"]
  spec.email         = ["dev@chriskeele.com"]

  spec.summary       = "Adds an easter-egg link to a status cat in the headers of your Rack application."
  spec.description   = "Just use Rack::HTTPCat in your application for all requests to have a link to the https://http.cat for their status under the HTTP-Cat header."
  spec.homepage      = "https://github.com/christhekeele/rack-http_cat"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "rack"
end
