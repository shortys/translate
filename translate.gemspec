$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "translate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "translate"
  s.version     = Translate::VERSION
  s.authors     = ["Ivan Osypenko"]
  s.email       = ["hello@itsites.ru"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Translate."
  s.description = "TODO: Description of Translate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
