module Agnostic
  module Helper
  module_function
    @helpers = []

    def included(klass)
      @helpers.each do |block|
        klass.class_eval(&block)
      end
    end

    def register(&block)
      @helpers.push(block)
    end
  end
end
