class SlicesController < ApplicationController
	def new
		@slice = Slice.create!
		@slice.workspace = Workspace.create!
		p = Project.create!
		p.workspaces << @slice.workspace
		@slice.workspace 	
		@slice.workspace.project.template = Template.first
		@slice.save 
		redirect_to slices_path(@slice)
	end
	
	def show
		@slice = Slice.find(params[:id])
	end
	
end
	