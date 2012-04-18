class Element
	include Mongoid::Document
	
	embedded_in :template
	recursively_embeds_many 
	has_many :matrixobjects
	
	field :name, :type => String
	
end
