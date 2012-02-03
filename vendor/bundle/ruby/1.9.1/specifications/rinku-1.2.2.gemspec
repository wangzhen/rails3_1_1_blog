# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rinku}
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Vicent MartÃ­}]
  s.date = %q{2011-06-19}
  s.description = %q{    A fast and very smart autolinking library that
    acts as a drop-in replacement for Rails `auto_link`
}
  s.email = %q{vicent@github.com}
  s.extensions = [%q{ext/rinku/extconf.rb}]
  s.extra_rdoc_files = [%q{COPYING}]
  s.files = [%q{COPYING}, %q{ext/rinku/extconf.rb}]
  s.homepage = %q{http://github.com/tanoku/rinku}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Mostly autolinking}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
