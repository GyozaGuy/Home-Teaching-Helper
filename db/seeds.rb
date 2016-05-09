# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# First round of stuff

members = Member.create([
  { first_name: 'Bob', last_name: 'Benson', email: 'bob@benson.com', phone_number: '(123) 456-7890', address: '123 Test Dr.', notes: "He's pretty much awesome." },
  { first_name: 'Darth', last_name: 'Vader', email: 'darksiderox@galacticempire.gov', phone_number: '(098) 765-4321', address: 'Imperial Palace', notes: 'Super nice!' },
  { first_name: 'Luke', last_name: 'Skywalker', email: 'anewhope@rebellion.org' },
  { first_name: 'John', last_name: 'Doe', email: 'johnnyboy@thepipesthepipesare.calling' },
  { first_name: 'Han', last_name: 'Solo' }
])

companionship = Companionship.create()
companionship.members = [members.first, members.second]
assignment = Assignment.create()
assignment.companionship = companionship
assignment.members = [members.third, members.fourth]
district = District.create()
district.assignments = [assignment]
district.member = members.fifth

# Second round of stuff

members = Member.create([
  { first_name: 'Larry', last_name: 'Swelter', email: 'phew@blah.wat', address: '123 Test Dr.' },
  { first_name: 'Dak', last_name: 'Ralter' },
  { first_name: 'Poe', last_name: 'Dameron', email: 'oneheckofapilot@resistance.mil' },
  { first_name: 'Jane', last_name: 'Doe', email: 'tarzanrockz@somewhereinatree.helpme' },
  { first_name: 'Maz', last_name: 'Kanata' }
])

companionship = Companionship.create()
companionship.members = [members.first, members.second]
assignment = Assignment.create()
assignment.companionship = companionship
assignment.members = [members.third, members.fourth, members.fifth]
district.assignments.push(assignment)
