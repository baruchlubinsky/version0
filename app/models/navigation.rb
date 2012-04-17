class Navigation
	include Mongoid::Document
	
	field :name, :type => String
	field :nav_id, :type => String
	
	embedded_in :slice
	
end
