class Template < Element
	include Mongoid::Document
	
	#embeds_many :elements
	
	field :name, :type => String
	
	#def child_elements
	#	self.elements
	#end
	
	def all_objects
	  objects = Array.new
	  
	  self.matrix_objects.each { |o| objects << o }
	  
	  self.child_elements.each do |e|
	    append_all(e, objects)
	  end	  	   
	  
	  return objects
	end
	
	def to_s
	  return self.name
	end
	
  def to_project_structure
    struct = ProjectStructure.new
    struct.name = self.name
    struct.template_id = self.id
    struct.elements = copy_structure
    return struct
  end
    
  def traverse(elements)
    elements.each do |e|
      yield(e)
      unless e.child_elements.nil?
        traverse(e.child_elements) { |el| yield(el) }
      end
    end
  end
  
  def copy_structure(parent = self)
    target = Array.new
    parent.child_elements.each do |e|
      temp = Element.new(:name => e.name)
      unless e.child_elements.nil?
        temp.child_elements = copy_structure(e)
      end
      target << temp
    end
    return target
  end
	
	private
	
	def append_all(element, array)
	  
	  element.matrix_objects.each { |o| array << o }
	  
	  
	  element.child_elements.each do |e|
	    append_all(e, array)
	  end 
	end
	
	
end
