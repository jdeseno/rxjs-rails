require File.expand_path('../lib/rxjs/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "rxjs-rails"
  s.version     = Rxjs::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["jdeseno"]
  s.email       = ["jdeseno@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/rxjs-rails"
  s.summary     = "Use RxJS with rails"
  s.description = "This gem makes the RxJS js files available to the rails asset pipeline"
  s.license     = "MIT"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "rxjs-rails"

  s.add_dependency "railties", ">= 3.0", "< 5.0"

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end

