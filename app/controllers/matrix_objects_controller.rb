class MatrixObjectsController < ApplicationController
	def create
		@slice = Slice.find(params[:slices_id])
		
		@object = (params[:matrix_object][:object_type] << "Object").constantize.new
		
		@object.name = params[:matrix_object][:name]
		  
		#@object.object_type = params[:matrix_object][:object_type]
		
		@object.matrix_attributes.each do |key, value|
		  @object[key] = params[key]
		end
		
		@nav = @slice.template
		
		@slice.navigations.drop(1).each do |n|
			@nav = @nav.child_elements.find(n.nav_id)
		end
		
		@nav.matrix_objects << @object
		
		@object.save
		
		
		
		@slice.save
		
		redirect_to slices_path(@slice)
	end
end
