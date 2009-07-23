if defined?(Sinatra)
  module Sinatra
    helpers Agnostic::Helper
  end
  Agnostic.modify
end
if defined?(Merb::Plugin)
  Merb::BootLoader.before_app_loads do
    module Merb
      module GlobalHelpers
        include Agnostic::Helper
      end
    end
    Agnostic.modify
  end
end
