class MatrixObject
	include Mongoid::Document
	
	field :name, :type => String
	
	field :misc_attributes, :type => Hash
	
	field :object_type, :type => String
	
	belongs_to :element
	
	def matrix_attributes
	  { :name => @name }
	end
	
end
