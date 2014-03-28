class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post? # create
        controller.flash.notice = resource.class.name.humanize + " was created."
      elsif patch? # update
        controller.flash.notice = resource.class.name.humanize + " was updated."
      end
    end

    super
  end
end