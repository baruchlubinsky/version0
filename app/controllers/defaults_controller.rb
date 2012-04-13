class DefaultsController < ApplicationController
	def index
		@template = Template.first
	end
end
