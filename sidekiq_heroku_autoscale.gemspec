# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'sidekiq/heroku_autoscale/version'

Gem::Specification.new do |s|
  s.name        = 'sidekiq_heroku_autoscale'
  s.version     = Sidekiq::HerokuAutoscale::VERSION
  s.authors     = ['Greg MacWilliam', 'Justin Love', 'Fix Peña']
  s.homepage    = 'https://github.com/gmac/sidekiq-heroku-autoscale'
  s.summary     = 'Start/stop Sidekiq workers on Heroku'
  s.description = 'Currently provides a Sidekiq middleware that does 0/1 scaling of Heroku processes'
  s.licenses    = ['MIT']
  s.files       = Dir['README.md', 'lib/**/*']

  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.5'
  s.add_runtime_dependency 'sidekiq', '~> 5.0'
  s.add_runtime_dependency 'platform-api', '~> 2.0'

  s.add_development_dependency 'bundler', '~> 2.0'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'minitest', '~> 5.12'
end
