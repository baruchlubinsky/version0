class Slice
	include Mongoid::Document
	
	has_one :workspace
	
	has_and_belongs_to_many :matrixobjects
	
	attr_accessor :contextMenu, :cSelection, :lens, :navigation
	
end