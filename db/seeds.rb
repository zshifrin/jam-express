# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all

Band.create([{ name: 'Widespread Panic'}, {name: 'String Cheese Incident'}, {name: 'Phish'}])

Concert.destroy_all

Concert.create([
  { band_id: Band.first.id, date: Time.new(2017,2,27), location: 'Quintana Roo, Mexico', venue: 'Riviera Maya'},
	{ band_id: Band.first.id, date: Time.new(2017,2,28), location: 'Quintana Roo, Mexico', venue: 'Riviera Maya'},
	{ band_id: Band.first.id, date: Time.new(2017,3,1), location: 'Quintana Roo, Mexico', venue: 'Riviera Maya'},
  { band_id: Band.first.id, date: Time.new(2017,3,2), location: 'Quintana Roo, Mexico', venue: 'Riviera Maya'},
  { band_id: Band.first.id, date: Time.new(2017,3,3), location: 'Quintana Roo, Mexico', venue: 'Riviera Maya'},
])

User.destroy_all

User.create({
  email: 'jon@example.com',
  name: 'Jon Smith',
  bio: 'About Jon',
  avatar_file_name: 'placeholder.png',
  password: 'password',
  password_confirmation: 'password'
})


