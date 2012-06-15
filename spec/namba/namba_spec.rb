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
      config.locale = :kz
    end

    n = Namba.new()

    n.username.should == "name"    
    n.password.should == "secret"
    n.locale.should == :kz
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
    }.should raise_error
  end
end
