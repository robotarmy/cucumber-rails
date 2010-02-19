require 'webrat'
require 'webrat/core/matchers'

# Rails version: '<%= rails_version %>'

Webrat.configure do |config|  
<% if rails_version == 2 %>  
  config.mode = :rails
<% else %>
  config.mode = :rake
<% end %>
  config.open_error_files = false # Set to true if you want error pages to pop up in the browser
end

<% unless rails_version == 2 %>                        
class Cucumber::Rails::World
  include Webrat::Methods
  include Webrat::Matchers
end                
<% end %>

