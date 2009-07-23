if defined?(Merb::Plugin)
  Merb::BootLoader.before_app_loads do
    module Merb
      module GlobalHelpers
        include Agnostic::Helper
      end
    end
  end
end
