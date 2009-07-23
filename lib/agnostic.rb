require File.join(File.dirname(__FILE__), %w[agnostic config])
require File.join(File.dirname(__FILE__), %w[agnostic plugin])
require File.join(File.dirname(__FILE__), %w[agnostic helper])

module Agnostic
module_function
  @plugins = {}
  @modifiers = []

  def plugin(name, &block)
    if block.nil?
      @plugins[name]
    else
      @plugins[name] ||= Plugin.new
      plugin(name).instance_eval(&block)
    end
  end

  def helper(&block)
    Helper.register(&block)
  end

  def modify(&block)
    if block.nil?
      @modifiers.each{|modifier| modifier.call}
    else
      @modifiers.push(block)
    end
  end

  def polyglot
    load File.join(File.dirname(__FILE__), %w[agnostic polyglot.rb])
  end
end
