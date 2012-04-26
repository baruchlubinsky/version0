class NavigationsController < ApplicationController

	def edit
		@slice = Slice.find(params[:slices_id])
		
		navigations = @slice.navigations
		
		location = @slice.template
		
		tempNav = Array.new
		
    navTemp = Navigation.new
    navTemp.name = @slice.workspace.project.name
    navTemp.nav_id = @slice.template._id
    
    tempNav << navTemp
		
		navigations.each do |nav|
		  puts nav.name
		  puts location.name
      unless nav.nav_id.to_s == location.id.to_s
        location = location.child_elements.find(nav.nav_id)
        temp = Navigation.new
        temp.name = location.name
        temp.nav_id = location.id
        tempNav << temp
      end 
		  if location.child_elements.index  {|e| (e.id.to_s <=> params[:id]) == 0 }
        curr_element = location.child_elements.find(params[:id])
        new_level = Navigation.new
        new_level.nav_id = curr_element.id
        new_level.name = curr_element.name
        tempNav << new_level
        break
      end
      
		end
		
		#curr_element = location.child_elements.find(params[:id])
		
		#new_level = Navigation.new
		#new_level.nav_id = curr_element.id
		#new_level.name = curr_element.name
		
		#@slice.navigations << new_level
		@slice.navigations = tempNav
		
		@slice.save
		
		redirect_to slices_path(@slice)
		
	end
	
	def destroy
	
		@slice = Slice.find(params[:slices_id])
		
		while @slice.navigations.last.nav_id != params[:id]
			@slice.navigations.last.delete
		end
		
		@slice.save
		
		redirect_to edit_slices_lens_path(:slices_id => @slice.id, :id => 'project', :option => 'structure')
		
	end
		
		
end
