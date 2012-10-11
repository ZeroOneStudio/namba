require "namba/version"
require 'namba/client'
require 'namba/config'

module Namba
  extend Config
  
  class << self

    # Alias for Namba::Client.new()
    def new
      Namba::Client.new
    end

    # Alias for Namba::Config.configure 
    def configure &block
      Namba::Config.configure &block
    end

  end
end

require 'namba/helpers/action_view_extension'
require 'namba/hooks'

# if not using Railtie, call `Namba::Hooks.init` directly
if defined? Rails
  require 'namba/railtie'
  require 'namba/engine'
end