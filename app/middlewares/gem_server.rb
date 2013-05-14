class MySinatraApp < Sinatra::Base
  get "/" do
    "Hello Sinatra World"
  end
end

class GemServer
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] =~ %r{^/sinatra}
      env["PATH_INFO"].sub! %r{^/sinatra}, ''
      MySinatraApp.call(env)
    else
      @app.call(env)
    end
  end
end