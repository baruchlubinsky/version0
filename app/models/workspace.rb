class Workspace
	include Mongoid::Document
	
	belongs_to :user
	belongs_to :slice
	belongs_to :project
end
