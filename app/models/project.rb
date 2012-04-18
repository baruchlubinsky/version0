class Project
	include Mongoid::Document
	
	has_and_belongs_to_many :users
	has_one :template
	has_many :workspaces
	has_many :matrix_objects
	
end
