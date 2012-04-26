class Slice
	include Mongoid::Document
	
	has_one :workspace
	
	has_and_belongs_to_many :matrix_objects
	
	embeds_many :navigations
	
	embeds_one :lens
	
	#field :navigation, :type => Array
	#field :lens , :type => Array
	#attr_accessor :contextMenu, :cSelection, :lens, :navigation
	
	def template
		self.workspace.project.project_structure
	end
	
	def currentElement
		if template.id == self.navigations.last.nav_id
			return nil
		else
			element = self.template
			self.navigations.drop(1).each do |n|
				element = element.child_elements.find(n.nav_id)
			end
		end
		return element
	end
	
	def breadcrumb
	  menu = Array.new
	  menu << { :nav => self.navigations[0], :elements => self.template.child_elements }
	  unless self.template.id == self.navigations.last.nav_id
      element = self.template
	    self.navigations.drop(1).each do |n|
        element = element.child_elements.find(n.nav_id)
	      menu << { :nav => n, :elements => element.child_elements }
	    end  
	  end
	  return menu
	end
	
end	
