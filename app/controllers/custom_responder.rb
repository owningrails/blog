class CustomResponder < ActionController::Responder
  def to_html
    unless has_errors?
      if post? # create
        controller.flash.notice = resource.class.name.humanize + " successfuly created."
      elsif patch? # updatem in Rails < 4: PUT, Rails => 4.0: PATCH
        controller.flash.notice = resource.class.name.humanize + " successfuly updated."
      end
    end

    super
  end
end