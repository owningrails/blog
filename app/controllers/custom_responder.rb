class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post? # create
        controller.flash.notice = resource.class.name.humanize + " created successfuly"
      elsif patch? || put? # update
        controller.flash.notice = resource.class.name.humanize + " updated successfuly"
      end
    end

    super
  end
end