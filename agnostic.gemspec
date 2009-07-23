# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{agnostic}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Genki Takiuchi"]
  s.date = %q{2009-07-24}
  s.description = %q{An abstract framework for framework agnostic plugins}
  s.email = %q{genki@s21g.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["Rakefile", "README", "lib/agnostic", "lib/agnostic/config.rb", "lib/agnostic/helper.rb", "lib/agnostic/plugin.rb", "lib/agnostic/polyglot.rb", "lib/agnostic.rb"]
  s.homepage = %q{http://blog.s21g.com/genki}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{asakusarb}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{An abstract framework for framework agnostic plugins}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
