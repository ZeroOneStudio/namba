require 'namba/config'
require 'namba/api_methods'

module Namba
  class Client
    extend Config
    include APIMethods
    attr_accessor *Config::VALID_KEYS

    def initialize(opts = {})
      opts = Namba::Config.options.merge(opts)
      Config::VALID_KEYS.each do |key|
        instance_variable_set("@#{key}".to_sym, opts[key])
     end
    end
  end
end
