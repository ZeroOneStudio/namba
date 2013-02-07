require "namba/version"
require 'namba/client'
require 'namba/config'
require 'namba/railtie' if defined? Rails

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
