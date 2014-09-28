class CustomLogger
  def initialize(app)
    @app = app
  end
  
  def call(env)
    puts "Call " + env["PATH_INFO"]
    @app.call(env)
  end
end