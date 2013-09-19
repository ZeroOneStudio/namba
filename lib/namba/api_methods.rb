require 'net/http'
require 'multi_json'

module Namba
  module APIMethods
    def get_user_info name = self.username
      get_response_from "http://api.namba.#{self.locale}/getUserInfo.php?username=" + name
    end

    %w(photo video).map do |key|
      define_method "get_user_#{key}" do |*args|
        name = args.first || self.username
        response = get_response_from "http://api.namba.#{self.locale}/get#{key.capitalize}.php?username=" + name
      end
    end

    def get_friends_list name = self.username
      get_response_from "http://api.namba.#{self.locale}/friends.php?username=" + name
    end

    def set_status text
      post_data_to "http://api.namba.#{self.locale}/setStatus.php", { :username => self.username, :password => self.password, :status => text }
    end

    def get_events
      post_data_to "http://api.namba.#{self.locale}/getEvents.php"
    end

    def get_new_mail_count
      post_data_to "http://api.namba.#{self.locale}/getNewMailCount.php"
    end

    def get_last_mail
      post_data_to "http://api.namba.#{self.locale}/getLastMail.php"
    end

private

    def get_response_from url
      response = Net::HTTP.get_response(URI.parse(url))
      raise_or_return response
    end

    def post_data_to url, params = { :username => self.username, :password => self.password }
      response = Net::HTTP.post_form(URI.parse(url), params)
      raise_or_return response
    end

    def raise_or_return response
      raise InvalidResponseError, "Invalid response from service" unless response.code == "200"
      if response.body == "null"
        return []
      else
        MultiJson.decode(response.body)
      end
    end
  end
end
