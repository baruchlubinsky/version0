class MatrixObject
	include Mongoid::Document
	
	field :name, :type => String
	
	field :misc_attributes, :type => Hash
	
	belongs_to :element
	
	def test
	  r = Element.new
	  
	end
end
