require "active_admin_environment_tag/version"

module ActiveAdminEnvironmentTag
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  class << self
    attr_reader :environment_colors

    def configuration
      if block_given?
        yield(ActiveAdminEnvironmentTag)
      end
    end

    def environment_colors= (new_colours)
      @environment_colors.merge!(new_colours)
    end

    alias :config :configuration
    alias :configure :configuration
  end

  @environment_colors = {
      development: '#91CA4B',
      production: '#fc1f27',
      default: '#c9d6e3'
  }
end


module ActiveAdmin
  module Views
    class Footer < Component
      def build
        super id: "footer"
        super style: "text-align: right;"

        div class: 'active-admin-environment-tag' do
          div Rails.env.capitalize
        end
      end
    end
  end
end
