require 'namba/error'

module Namba
  module Config
    extend self

    VALID_KEYS = [
      :username,
      :password,
      :locale
    ]
	
    attr_accessor *VALID_KEYS

    def configure
      yield self

      # Setting default configuraion options
      # if not provided
      self.tap do |s|
        s.username = "" if s.username.nil? 
        s.password = "" if s.password.nil? 
        s.locale = :kg if s.locale.nil? 
      end
      raise ConfigurationError, "Available locales are only 'kg' and 'net'" unless [:kg, :net].include?(self.locale)
    end

    def options
      options = {}
      VALID_KEYS.each {|k| options[k] = send(k)}
      options
    end
  end
end
