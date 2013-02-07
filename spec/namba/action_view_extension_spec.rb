require 'spec_helper'
require 'namba/helpers/action_view_extension'

describe Namba::ActionViewExtension do

  it "should have :namba_comments method" do
    Namba::ActionViewExtension.method_defined?(:namba_comments).should == true
  end

  it "should have :namba_share method" do
    Namba::ActionViewExtension.method_defined?(:namba_share).should == true
  end
end
