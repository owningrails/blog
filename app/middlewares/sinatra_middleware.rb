class MySinatraApp < Sinatra::Base
  get "/" do
    "Hello from Sinatra"
  end
end

class SinatraMiddleware
  def initialize(app)
    @app = app
    @sinatra = MySinatraApp.new
  end

  def call(env)
    # /sinatra
    if env["PATH_INFO"] =~ %r{^/sinatra}
      env["PATH_INFO"].sub! %r{^/sinatra}, '' # /hi
      @sinatra.call(env)
    else
      @app.call(env)
    end
  end
end