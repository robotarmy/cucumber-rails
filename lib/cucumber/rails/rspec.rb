require 'cucumber/rails/world'
require 'rspec/expectations'
require 'rspec/rails'

[Cucumber::Rails::World, ActionController::Integration::Session].each do |klass|
  klass.class_eval do
    include RSpec::Matchers
    include RSpec::Rails::Matchers
  end
end
