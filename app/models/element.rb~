class Element
	include Mongoid::Document
	
	embedded_in :template
	recursively_embeds_many 
	has_many :matrixObjects
	
	field :name, :type => String
	
end
