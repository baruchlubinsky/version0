class Lens
	include Mongoid::Document
	field :name, :type => String
	embedded_in :slice
	embeds_many :lens_items
end
