module Namba
  module ActionViewExtension
    
    %w(comments share).map do |key|
      define_method(:"namba_#{key}") do |component_name, component_id|
        html = []
        html << content_tag(:div, "", :id => "namba-#{key}")
        html << javascript_include_tag("http://api.namba.kg/nb.js.php")
        html << javascript_tag("NB.insert(\"#{key}\", \"namba-#{key}\", {component: \"#{component_name}\", componentId: #{component_id}});")
        html.join("\n").html_safe
      end
    end
    
  end
end