class Project
	include Mongoid::Document
	
	field :name, :type => String
	field :template_id, :type => String
	
	has_and_belongs_to_many :users
	embeds_one :project_structure
	has_many :workspaces
	has_many :matrix_objects
	
end
