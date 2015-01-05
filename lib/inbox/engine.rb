
Gem.loaded_specs['inbox'].dependencies.each do |d|
 begin
 	require d.name
 rescue LoadError => e
 end
end

#Gem.loaded_specs['inbox'].development_dependencies.each do |d|
# require d.name
#end

require 'inbox/engine'

module Inbox

class Engine < ::Rails::Engine
    isolate_namespace Inbox

    config.generators do |g|
     g.test_framework :rspec, :fixture => false
     g.fixture_replacement :factory_girl, :dir => 'spec/factories'
     g.assets false
     g.helper false
    end

   end
end
