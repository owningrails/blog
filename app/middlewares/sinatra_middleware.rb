class MySinatraApp < Sinatra::Base
  get "/" do
    "Hello from Sinatra"
  end
end

class SinatraMiddleware
  def initialize(app)
    @rails_app = app
  end

  def call(env)
    if env["PATH_INFO"] =~ %r{^/sinatra}
      env["PATH_INFO"].sub! %r{^/sinatra}, "" # /hi
      MySinatraApp.call(env)
    else
      @rails_app.call(env)
    end
  end
end