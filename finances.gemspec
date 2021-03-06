$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "finances/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "finances"
  s.version     = Finances::VERSION
  s.authors     = ["Marco Antonio"]
  s.email       = ["marcofognog @ gmail.com"]
#  s.homepage    = "Não tem"
  s.summary     = "Adiciona uma página para entrada e exibição de DRE."
  s.description = "Rails plugin para adicionar páginas com demonstrativos contábeis, úteis para pequenas indie apps."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
