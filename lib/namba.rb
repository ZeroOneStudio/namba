require "namba/version"
require 'namba/client'
require 'namba/config'

module Namba
	extend Config

	class << self

		# Alias for Namba::Client.new()
		def new(opts = {})
			Namba::Client.new(opts)
		end

		# Alias for Namba::Config.configure 
		def configure &block
			Namba::Config.configure &block
		end

	end
end
