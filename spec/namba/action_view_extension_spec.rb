require 'spec_helper'


describe Namba::ActionViewExtension do

  it "should have :namba_comments and :namba_share methods" do
    instance_methods = Namba::ActionViewExtension.instance_methods
    instance_methods.should == [:namba_comments, :namba_share]
  end

end
