require 'rack'
require 'capybara'
require 'capybara/dsl'
require 'capybara/session'
require 'capybara/rspec'

# Wire up Capybara to test again static files served by Rack
# Courtesy of http://opensoul.org/blog/archives/2010/05/11/capybaras-eating-cucumbers/

Capybara.app = Rack::Builder.new do
  map "/" do
    # use Rack::CommonLogger, $stderr
    use Rack::Static, :urls => ["/"], :root =>  File.join(File.dirname(__FILE__), '..', 'output')
    use Rack::Lint
    run lambda {|env| [404, {}, '']}
  end
end.to_app

Capybara.default_selector = :css
Capybara.default_driver   = :rack_test