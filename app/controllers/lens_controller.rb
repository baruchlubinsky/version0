class LensController < SecureController
	def edit
		@slice = Slice.find(params[:slices_id])
		case params[:id]
		when 'project'
			case params[:option]
			when 'structure'
				location = @slice.template
				@slice.lens = Lens.new
				unless location.id.to_s == @slice.navigations.last.nav_id
					@slice.navigations.drop(1).each do |nav|
						location = location.child_elements.find(nav.nav_id)
					end
				end
				@slice.lens.name = location.name
				
				location.child_elements.each do |e|
					item = LensItem.new
					item.title = e.name
					item.link = url_for edit_slices_navigation_path(:slices_id => @slice.id, :id => e.id)
					@slice.lens.lens_items << item
				end
				#@slice.lens.lens_items = location.child_elements.to_a
			end
		end
		@slice.lens.name = params[:option].capitalize
		
		@slice.save

    redirect_to slices_path(@slice) 
	end
end
