# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  student = Student.create(first_name: "Bert", last_name: "Kringles")
end
5.times do
  school_class = SchoolClass.create(title: "Intro to Ruby", room_number: 2)
end 
