$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "doc_server/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "doc_server"
  s.version     = DocServer::VERSION
  s.authors     = ["Louis Pilfold"]
  s.email       = ["louis@lpil.uk"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.license     = ""

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"
  s.add_development_dependency "pry-byebug"
end
