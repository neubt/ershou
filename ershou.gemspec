$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ershou/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ershou"
  s.version     = Ershou::VERSION
  s.authors     = ["wuwx"]
  s.email       = ["admin@neubt.com"]
  s.homepage    = "http://github.com/neubt"
  s.summary     = "Summary of Ershou."
  s.description = "Description of Ershou."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "simple_form", "~> 2.0.4"
  # s.add_dependency "jquery-rails"
  s.add_dependency "cancan", "~> 1.6.9"
  s.add_dependency "inherited_resources", "~> 1.4.0"
  
  s.add_dependency "kaminari", "~> 0.14.1"
  s.add_dependency "kaminari-bootstrap", "~> 0.1.3"
  
  s.add_dependency "slim", "~> 1.3.8"
  s.add_dependency "state_machine", "~> 1.2.0"
  
  s.add_dependency "paperclip", "~> 3.4.1"
  
  s.add_dependency "redcarpet", "~> 2.2.2"

  s.add_development_dependency "sqlite3"
end
