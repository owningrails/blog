class ApplicationController < ActionController::Base
  self.responder = CustomResponder
end


class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post?
        controller.flash[:notice] =
          "#{resource.class.name.humanize} was successfully created."
      elsif put?
        controller.flash[:notice] =
          "#{resource.class.name.humanize} was successfully updated."
      end
    end
    
    super
  end
end