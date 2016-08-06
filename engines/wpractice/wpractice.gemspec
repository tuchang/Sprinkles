$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wpractice/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wpractice"
  s.version     = Wpractice::VERSION
  s.authors     = ["RaviShankar"]
  s.email       = ["ravioshankar@gmail.com"]
  s.homepage    = "http://vartaman.org"
  s.summary     = "Wpractice: Summary of Wpractice."
  s.description = "Wpractice: Description of Wpractice."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "mysql2", '~> 0.4.2'
end
