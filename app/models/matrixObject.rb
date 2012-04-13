class MatrixObject
	include Mongoid::Document
	
	belongs_to :element
	has_and_belongs_to_many :slices
end
