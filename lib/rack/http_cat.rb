module Rack
  class HTTPCat

    VERSION = "1.0.0"

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      headers["HTTP-Cat"] = "https://http.cat/#{status}"
      [status, headers, response]
    end

  end
end
