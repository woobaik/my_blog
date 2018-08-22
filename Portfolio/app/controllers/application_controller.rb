class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_copyright

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:name])
    devise_parameter_sanitizer.permit(:registration, keys: [:name])
  end
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  def set_copyright
    @copyright = JoungwooViewTool::Renderer.copyright("Joungwoo Baik", "All rights revserved")
  end

end

module JoungwooViewTool
  class Renderer
    def self.copyright(name, msg)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
