# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create_with(first_name: 'Hiromi', last_name: 'De Young', password: 'password').find_or_create_by(email: 'hiromi@futurefactory.net')

if user.addresses.length < 1
  user.addresses << Address.create(description: 'Home', zip: '84001', street1: '2020 South 300 East', city: 'Salt Lake City', state: 'Utah', country: 'U.S.A', phone: '(801)111-2233')
end
