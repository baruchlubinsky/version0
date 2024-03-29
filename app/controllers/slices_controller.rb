class SlicesController < SecureController
	

	def new
		@slice = Slice.create!
		@slice.workspace = Workspace.create!
		p = Project.create!
		p.workspaces << @slice.workspace
		@slice.workspace 	
		@slice.workspace.project.project_structure = Template.first.copy_structure
	 	nav = Navigation.new
	 	nav.name = @slice.template.name
	 	nav.nav_id = @slice.template._id
	 	@slice.navigations << nav
		@slice.save 
		redirect_to slices_path(@slice)
	end

	
	def show
		
		@slice = Slice.find(params[:id])
		  
		@user = User.find(session[:user_id])
		
		if @slice.currentElement.id == @slice.template.id
		  @objects = @slice.template.all_objects
		else
      @objects = @slice.currentElement.matrix_objects  
		end
		
		@new_matrix_objects = [MemberObject.new, ContentObject.new, CallibrationObject.new, ConversationObject.new]
		  
	end

end
	
