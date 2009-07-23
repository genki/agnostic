module Agnostic
  class Plugin
    def initialize
      @config = Config.new
    end

    def method_missing(method, *args, &block)
      @config.send(method, *args, &block) 
    end
  end
end
