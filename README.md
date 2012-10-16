# ActiveAdminRelationshipFilters

This gem provides a few more filter options to ActiveAdmin allowing you to easily traverse relationships or filter on a HABTM.

## Installation

Add this line to your application's Gemfile:

    gem 'active_admin_relationship_filters'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_admin_relationship_filters

## Usage

### Multilevel Filter

Given the following scenario:
	
	class Customer < ActiveRecord::Base
		belongs_to :customer_type
	end
	
	class CustomerType < ActiveRecord::Base
		has_many :customers
		belongs_to :region
	end
	
	class Region < ActiveRecord::Base
		has_many :customer_types, dependent: :destroy
	end
	
	ActiveAdmin.register Customer do
		filter :customer_type_region_id, as: :multilevel, collection: proc { Region.all }, label: "Region"
	end

The above configuration would allow me to select one `Region` from a dropdown to filter my listing of `Customer` records by, respective to an attribute on another model (`CustomerType`)

### HABTM Filter

Given the following scenario:

	class View < ActiveRecord::Base
		has_and_belongs_to_many :items
	end
	
	class Item < ActiveRecord::Base
		has_and_belongs_to_many :views
	end
	
	ActiveRecord.register Item do
		filter :views_id, as: :habtm, collection: proc { View.all }
	end
	
The above configuration would allow me to select one `View` from a dropdown to filter my listing of `Item` records by, for a HABTM relationship, while ActiveAdmin only supports belongs_to by default.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
