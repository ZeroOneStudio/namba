require "namba/version"
require 'namba/client'
require 'namba/config'

if defined? Rails
  require 'namba/railtie'
  require 'namba/helpers/action_view_extension'
end


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
