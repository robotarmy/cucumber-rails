require 'cucumber/rails/world'
require 'rspec/expectations'
require 'rspec'
require 'rspec/rails'

[Cucumber::Rails::World, ActionController::Integration::Session].each do |klass|
  klass.class_eval do
    include Rspec::Matchers
    include Rspec::Rails::Matchers
  end
end
