module ActiveAdmin
  module Inputs
    class FilterHabtmInput < FilterSelectInput
      include FilterBase

      def to_html
        input_wrapping do
          label_html <<
            (options[:group_by] ? grouped_select_html : select_html)
        end
      end

      def input_name
        name = super.sub("_ids_eq", "")
        "#{name}s_id_in"
      end

      def input_options
        super.merge(:include_blank => I18n.t('active_admin.any'))
      end

      def method
        super.to_s.sub(/_id$/,'').to_sym
      end

      def extra_input_html_options
        {}
      end
    end
  end
end