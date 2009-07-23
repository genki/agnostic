module Agnostic
  class Config
    def initialize
      @hash = {}
    end

    def method_missing(method, *args, &block)
      if args.empty?
        @hash[method] ||= Config.new
      elsif block.nil?
        @hash[method] = args.size == 1 ? args.first : args
      else
        class << self; self end.class_eval do
          define_method(method){block.call(*args)}
        end
      end
    end
  end
end
