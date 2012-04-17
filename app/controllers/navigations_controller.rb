class NavigationsController < ApplicationController

	def edit
		@slice = Slice.find(params[:slices_id])
		
		navigations = @slice.navigations
		
		location = Template.find(navigations[0].nav_id)
		
		navigations.drop(1).each do |nav|
			location = location.child_elements.find(nav.nav_id)
		end
		
		curr_element = location.child_elements.find(params[:id])
		
		new_level = Navigation.new
		new_level.nav_id = curr_element.id
		new_level.name = curr_element.name
		
		@slice.navigations << new_level
		
		@slice.save
		
		redirect_to edit_slices_lens_path(:slices_id => @slice.id, :id => 'project', :option => 'structure')
		
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
