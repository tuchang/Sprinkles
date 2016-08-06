$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blife/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blife"
  s.version     = Blife::VERSION
  s.authors     = ["RaviShankar"]
  s.email       = ["ravioshankar@gmail.com"]
  s.homepage    = "https://vartaman.org/"
  s.summary     = "BugLife: Summary of Blife."
  s.description = "BugLife: Description of Blife."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency 'mysql2', '~> 0.4.2'
end
