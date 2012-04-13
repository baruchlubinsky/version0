class Template
	include Mongoid::Document
	
	embeds_many :elements
	belongs_to :project
	
	field :name, :type => String
end
