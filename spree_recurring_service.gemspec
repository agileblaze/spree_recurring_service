# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_recurring_service'
  s.version     = '0.70.3'
  s.summary     = 'Spree extension'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

   s.author            = 'Agil'
   s.email             ='3rdparty@agileblaze.com'
   s.homepage          = 'http://agileblaze.com/'
  # s.rubyforge_project = 'actionmailer'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.3'
  s.add_development_dependency 'rspec-rails'
end

