require 'capybara/rails'
require 'capybara/cucumber'
require 'capybara/session'
require 'cucumber/rails/capybara_javascript_emulation' # Lets you click links with onclick javascript handlers without using @culerity or @javascript
# Capybara defaults to XPath selectors rather than Webrat's default of CSS3. In
# order to ease the transition to Capybara we set the default here. If you'd
# prefer to use XPath just remove this line and adjust any selectors in your
# steps to use the XPath syntax.
Capybara.default_selector = :css

# From: http://github.com/jnicklas/capybara/issues#issue/46

require 'capybara/dsl'

Capybara.app = <%= application_name %>::Application

module <%= application_name %>
  class IntegrationTest
    include Capybara
  end
end
