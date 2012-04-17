class Template
	include Mongoid::Document
	
	embeds_many :elements
	belongs_to :project
	
	field :name, :type => String
	
	def child_elements
		self.elements
	end
end
