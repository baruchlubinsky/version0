class Element
	include Mongoid::Document
	
	#embedded_in :template
	recursively_embeds_many 
	has_many :matrix_objects
	
	field :name, :type => String
	
	#todo override [] to access child_elements[]
	
end
