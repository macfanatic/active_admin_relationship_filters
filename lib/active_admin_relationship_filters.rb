require "active_admin_relationship_filters/version"
require 'active_admin'
require 'active_admin_relationship_filters/filters/filter_base'

module ActiveAdminRelationshipFilters

  ::ActiveAdmin::Event.subscribe ::ActiveAdmin::Application::BeforeLoadEvent do |app|    
    require 'active_admin_relationship_filters/filters/filter_habtm_input'
    require 'active_admin_relationship_filters/filters/filter_multilevel_input'    
  end

end