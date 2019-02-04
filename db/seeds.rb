# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create([{first_name: 'Sarah',last_name: 'Shin'},{first_name: 'Elbert',last_name: 'Low'}])
SchoolClass.create([{title: 'Web Development Immersive', room_number: 1},{title: 'Python 101', room_number: 515}])
