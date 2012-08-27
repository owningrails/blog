$: << Rails.root.join("../patterns")
require "front_controller"

class Patterns
  def initialize(app)
    @app = app
    @front_controller = FrontController.new
  end
  
  def call(env)
    if env["PATH_INFO"] =~ %r{^/patterns}
      env["PATH_INFO"].gsub!(%r{^/patterns}, "")
      @front_controller.call(env)
    else
      @app.call(env)
    end
  end
end