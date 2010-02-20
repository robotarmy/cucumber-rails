require 'webrat'
require 'webrat/core/matchers'

# Rails version: '<%= rails_version %>'

Webrat.configure do |config|  
  config.mode = :rake
  config.open_error_files = false # Set to true if you want error pages to pop up in the browser
end

class Cucumber::Rails::World
  include Webrat::Methods
  include Webrat::Matchers
end                


