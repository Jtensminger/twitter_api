# -*- encoding: utf-8 -*-
# stub: doorkeeper 3.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "doorkeeper"
  s.version = "3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Felipe Elias Philipp", "Tute Costa"]
  s.date = "2015-09-24"
  s.description = "Doorkeeper is an OAuth 2 provider for Rails and Grape."
  s.email = ["tutecosta@gmail.com"]
  s.homepage = "https://github.com/doorkeeper-gem/doorkeeper"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "OAuth 2 provider for Rails and Grape"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.2"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.2.0"])
      s.add_development_dependency(%q<capybara>, ["~> 2.3.0"])
      s.add_development_dependency(%q<generator_spec>, ["~> 0.9.0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 4.5.0"])
      s.add_development_dependency(%q<timecop>, ["~> 0.7.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.3.0"])
    else
      s.add_dependency(%q<railties>, [">= 3.2"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.2.0"])
      s.add_dependency(%q<capybara>, ["~> 2.3.0"])
      s.add_dependency(%q<generator_spec>, ["~> 0.9.0"])
      s.add_dependency(%q<factory_girl>, ["~> 4.5.0"])
      s.add_dependency(%q<timecop>, ["~> 0.7.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.3.0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.2"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.2.0"])
    s.add_dependency(%q<capybara>, ["~> 2.3.0"])
    s.add_dependency(%q<generator_spec>, ["~> 0.9.0"])
    s.add_dependency(%q<factory_girl>, ["~> 4.5.0"])
    s.add_dependency(%q<timecop>, ["~> 0.7.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.3.0"])
  end
end
