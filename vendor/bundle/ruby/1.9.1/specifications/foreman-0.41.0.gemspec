# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{foreman}
  s.version = "0.41.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{David Dollar}]
  s.date = %q{2012-03-16}
  s.description = %q{Process manager for applications with multiple components}
  s.email = %q{ddollar@gmail.com}
  s.executables = [%q{foreman}]
  s.files = [%q{bin/foreman}]
  s.homepage = %q{http://github.com/ddollar/foreman}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Process manager for applications with multiple components}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0.13.6"])
    else
      s.add_dependency(%q<thor>, [">= 0.13.6"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0.13.6"])
  end
end
