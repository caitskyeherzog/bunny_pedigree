# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bunnies = Bunny.create([
	{ name: 'Berni', color: 'Tort', dob:'2016-01-01' },
	 { name: 'Hopscotch', color: 'Tort', dob:'2016-01-01' }, 
	 {name: 'Lily', color: 'Lilac', dob:'2016-01-01'}, 
	 {name: 'Sam', color: 'Broken Chocolate', dob:'2016-01-01'}
	 ])