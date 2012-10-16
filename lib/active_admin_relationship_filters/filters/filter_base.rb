module ActiveAdmin
  module Inputs
    module FilterBase
      
      def wrapper_html_options
        { :class => "filter_form_field #{as}", id: "filter_#{input_name}" }
      end
    
    end
  end
end
