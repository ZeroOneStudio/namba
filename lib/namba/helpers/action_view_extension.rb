module Namba
  module ActionViewExtension
    
    def namba_comments(component_name, component_id)
      html = []
      html << content_tag(:div, "", :id => "namba-comments")
      # html << javascript_include_tag("http://api.namba.#{Namba::Config.options[:locale]}/nb.js.php")
      html << javascript_include_tag("http://api.namba.kg/nb.js.php")
      html << javascript_tag("NB.insert(\"comments\", \"namba-comments\", {component: \"#{component_name}\", componentId: #{component_id}});")
      html.join("\n").html_safe
    end
    
  end
end