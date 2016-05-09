# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Companionship.create()

members = Member.create([
  { first_name: 'Bob', last_name: 'Benson', email: 'bob@benson.com', phone_number: '(123) 456-7890', address: '123 Test Dr.', notes: "He's pretty much awesome.", companionship_id: 1 },
  { first_name: 'Darth', last_name: 'Vader', email: 'darksiderox@galacticempire.org', phone_number: '(098) 765-4321', address: 'Imperial Palace', notes: 'Super nice!', companionship_id: 1 }
])
