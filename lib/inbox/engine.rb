
Gem.loaded_specs['inbox'].dependencies.each do |d|
 require d.name
end

require 'inbox/engine'

module Inbox

class Engine < ::Rails::Engine
    isolate_namespace Inbox

   end
end
