class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :prepare_data
  	
	private
		def prepare_data
			@matrix_object = MatrixObject.new
		end

end
