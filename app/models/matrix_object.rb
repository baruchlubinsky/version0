class MatrixObject
	include Mongoid::Document
	
	field :name, :type => String
	
	field :misc_attributes, :type => Hash
	
	field :object_type, :type => String
	
	field :access_level, :type => String
	
	belongs_to :element
	belongs_to :user
	
	def matrix_attributes
	  { :name => self.name }
	end
	
end
