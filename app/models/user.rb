class User
	include Mongoid::Document

	has_many :workspaces
	has_and_belongs_to_many :projects
end
