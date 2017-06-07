# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.development? || Rails.env.test?
  abort ("The script is running in non development environment. Refusing to seed")
end

Skill.destroy_all

Employee.destroy_all

Project.destroy_all

Project.create!([{
	:name => "Report Garden",
	:details => "A reporting tool, for the advertising dealers!",
},
{
	:name => "Advert Kit",
	:details => "A reporting tool!",
},
{
	:name => "Tribe Local",
	:details => "A tool to promote your small business!",
},
{
	:name => "Helium",
	:details => "An internal tool of Report Garden",
},
])
=begin
Employee.create!([{
	:name => "Ashok Varma",
	:designation => "CEO",
	:date_of_joining => "01/06/2013",
	:age => 35,
	:project_id => 1,
},{
	:name => "Ashwani Chandra",
	:designation => "Manager",
	:date_of_joining => "01/06/2017",
	:age => 35,
	:project_id => 1,
},
])
=end