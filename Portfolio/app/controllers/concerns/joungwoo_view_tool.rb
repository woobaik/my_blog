module  JoungwooViewTool
  extend ActiveSupport::Concern

  included do
    before_action :set_copyright

    def set_copyright
      @copyright = JoungwooViewTool::Renderer.copyright("Joungwoo Baik", "All rights revserved")
    end
  end


  class Renderer
    def self.copyright(name, msg)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end

end
