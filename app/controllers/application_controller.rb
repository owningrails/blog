class ApplicationController < ActionController::Base
  protect_from_forgery
  
  self.responder = CustomResponder
end
