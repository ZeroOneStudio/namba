require 'spec_helper'

describe Namba::APIMethods do
  before :each do
    Namba.configure do |config|
      config.username = "nambagem"
      config.password = "nambagem"
      config.locale = :kg
    end 
    @namba = Namba.new
  end

  describe "::get_user_info" do
    before :each do
      @user_info = @namba.get_user_info
    end

    it "should be a Hash" do
      @user_info.class.should == Hash
    end

    it "should return correct JSON" do
      @user_info['firstname'].should == "Namba"
      @user_info['lastname'].should == "Gem"
    end
  end

  describe "::get_user_video" do
    before :each do
      @user_video = @namba.get_user_video
    end

    it "should be an Array" do
      @user_video.class.should == Array
    end
  end  

  describe "::get_user_photo" do
    before :each do
      @user_photo = @namba.get_user_photo
    end

    it "should be an Array" do
      @user_photo.class.should == Array
    end
  end  

  describe "::get_friends_list" do
    before :each do
      @friends_list = @namba.get_friends_list
    end

    it "should be an Array" do
      @friends_list.class.should == Array
    end

    it "should return correct JSON" do
      @friends_list.first['username'].should == "kishie"
    end
  end   

  describe "::set_status" do
    before :each do
      @status = @namba.set_status("New Status")
    end

    it "should change user's status" do
      @namba.get_user_info['status'] == @status
    end
  end 

  describe "::get_events" do
    before :each do
      @events = @namba.get_events
    end

    it "should be an Array" do
      @events.class.should == Array
    end
  end    

  describe "::get_last_mail" do
    before :each do
      @last_mail = @namba.get_last_mail
    end

    it "should be an Array" do
      @last_mail.class.should == Array
    end
  end

  describe "::get_new_mail_count" do
    before :each do
      @new_mail_count = @namba.get_new_mail_count
    end

    it "should return new mail count" do
      @new_mail_count['new_messages'].class.should == Fixnum
    end
  end       
end
