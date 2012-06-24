module Namba
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'namba' do |_app|
      Namba::Hooks.init
    end
  end
end