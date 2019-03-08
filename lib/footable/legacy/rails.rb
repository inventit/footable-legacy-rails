require "footable/legacy/rails/version"

module Footable
  module Legacy
    module Rails
      class Engine < ::Rails::Engine
        initializer 'footable-legacy.assets.precompile' do |app|
          app.config.assets.precompile << %r(footable\.(?:eot|svg|ttf|woff)$)
        end
      end
    end
  end
end
