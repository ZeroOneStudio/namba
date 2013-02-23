require 'spec_helper'

describe Namba do

  before(:each) do
    Namba.configure do |config|
      config.username = nil
      config.password = nil
      config.locale = nil
    end 
  end

  it "should set configuration information" do
    Namba.configure do |config|
      config.username = "name"
      config.password = "secret"
      config.locale = :net
    end

    n = Namba.new()

    n.username.should == "name"    
    n.password.should == "secret"
    n.locale.should == :net
  end

  it "should set defaults when it is not set in configuration block" do
    Namba.configure do |config|
    end

    n = Namba.new()

    n.username.should == ""    
    n.password.should == ""
    n.locale.should == :kg
  end

  it "should not allow to set any locale except :kg or :kz" do
    expect {     
      Namba.configure do |config|
        config.locale = :ru
      end 
    }.to raise_error(Namba::ConfigurationError, "Available locales are only 'kg' and 'net'")
  end
  
  it "should raise Invalid Response Error when status code is not 200" do
    Namba.configure do |config|
      config.username = "name"
      config.password = "secret"
      config.locale = :net
    end

    n = Namba.new()
    
    expect {
      n.send(:get_response_from, "http://api.namba.#{n.locale}/404")
    }.to raise_error(Namba::InvalidResponseError, "Invalid response from service")
  end
end
