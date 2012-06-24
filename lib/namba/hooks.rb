module Namba
  class Hooks
    def self.init
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, Namba::ActionViewExtension
      end
    end
  end
end