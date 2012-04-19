class Template
	include Mongoid::Document
	
	embeds_many :elements
	belongs_to :project
	
	field :name, :type => String
	
	def child_elements
		self.elements
	end
	
	def all_objects
	  objects = Array.new
	  
	  self.elements.each do |e|
	    append_all(e, objects)
	  end	  	   
	  
	  return objects
	end
	
	private
	
	def append_all(element, array)
	  
	  element.matrix_objects.each { |o| array << o }
	  
	  
	  element.child_elements.each do |e|
	    append_all(e, array)
	  end 
	end
	
end
