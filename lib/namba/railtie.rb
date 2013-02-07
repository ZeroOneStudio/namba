module Namba
  class Railtie < Rails::Railtie
    initializer "namba.action_view_extension" do
      ActionView::Base.send :include, ActionViewExtension
    end
  end
end