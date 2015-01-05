    ENV['RAILS_ENV'] ||= 'test'

    require File.expand_path("../dummy/config/environment.rb", __FILE__)
    require 'rspec/rails'
    require 'rspec/autorun'
    require 'factory_girl_rails'

    Rails.backtrace_cleaner.remove_silencers!

    # Load support files
    Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
    
    RSpec.configure do |config|
     config.mock_with :rspec
     config.use_transactional_fixtures = true
     config.infer_base_class_for_anonymous_controllers = false
     config.order = "random"
     config.warnings = false

     #added later
     config.include FactoryGirl::Syntax::Methods

    end

    #added later
    FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]
    FactoryGirl.find_definitions

