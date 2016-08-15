$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "translate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "itranslate4"
  s.version     = Translate::VERSION
  s.authors     = ["Ivan Osypenko"]
  s.email       = ["hello@itsites.ru"]
  s.homepage    = "http://itsites.ru"
  s.summary     = "Translator"
  s.description = "Fast translator"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"

  s.add_development_dependency "sqlite3"
end
