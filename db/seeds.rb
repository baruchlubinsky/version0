# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Template.delete_all(conditions: {name: 'Business Planning Template'})

demo = Template.new

demo.name = 'Business Planning Template'

['Objective Setting', 'Market Analysis', 'Competitor Analysis', 
'Customer Segmentation', 'Routes to Market', 'Product Portfolio',
'Sales Plan', 'Marketing Campaigns', 'Budget'].each do |name|
	elem = Element.new
	elem.name = name
	demo.elements << elem
end

['Objective Name 1', 'Objective Name 2'].each do |name|
	demo.elements[0].child_elements.build(:name => name)
end

['Market Forecast', 'Market Assessment', 'Market Positioning', 'Market Strategy'].each do |name|
	demo.elements[1].child_elements.build(:name => name)
end


demo.save!
