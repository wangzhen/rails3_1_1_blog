# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mini_magick}
  s.version = "3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Corey Johnson}, %q{Hampton Catlin}, %q{Peter Kieltyka}]
  s.date = %q{2011-12-28}
  s.description = %q{}
  s.email = [%q{probablycorey@gmail.com}, %q{hcatlin@gmail.com}, %q{peter@nulayer.com}]
  s.homepage = %q{http://github.com/probablycorey/mini_magick}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<subexec>, ["~> 0.2.1"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<subexec>, ["~> 0.2.1"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<subexec>, ["~> 0.2.1"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
