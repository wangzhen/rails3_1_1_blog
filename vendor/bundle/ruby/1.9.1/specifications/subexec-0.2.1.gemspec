# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{subexec}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Peter Kieltyka}]
  s.date = %q{2011-12-28}
  s.description = %q{Subexec spawns a subprocess with an optional timeout}
  s.email = [%q{peter@nulayer.com}]
  s.homepage = %q{http://github.com/nulayer/subexec}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Subexec spawns a subprocess with an optional timeout}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.7.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.7.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.7.0"])
  end
end
