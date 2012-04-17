class Slice
	include Mongoid::Document
	
	has_one :workspace
	
	has_and_belongs_to_many :matrixobjects
	
	embeds_many :navigations
	
	embeds_one :lens
	
	#field :navigation, :type => Array
	#field :lens , :type => Array
	#attr_accessor :contextMenu, :cSelection, :lens, :navigation
	
	def template
		self.workspace.project.template
	end
	
end	
