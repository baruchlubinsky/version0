class LensController < ApplicationController
	def edit
		@slice = Slice.find(params[:slices_id])
		@selection = @slice.workspace.project.template.elements.find(params[:id])
		@slice.lens = Lens.new
		@slice.lens.items = @selection.child_elements
		@slice.lens.name = @selection.name
		render 'slices/show' 
	end
end
