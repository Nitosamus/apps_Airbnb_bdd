# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
system ("clear")

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

100.times do 
	x = City.create(city_name: Faker::Address.city)
	a = Dog.new( name: Faker::Creature::Dog.name, color: Faker::Color_name, race: Faker::Creature::Dog.breed)
	a.update(city:x)
	b = Dogsitter.new(first_name: Faker::Name.first_name, age: rand(12..70))
	b.update(city:x)
	c = Stroll.new(place: Faker::Address.street_name, duration: "#{rand(45..200)} mn")
	c.update(dog: a)
	c.update(dogsitter: b)
		
end


s = City.all
t = Dogsitter.all
v = Dog.all
u = Stroll.all

=begin
s.length.times do 
	v[rand(0..s.length)].update(city:s[rand(0..s.length)])
	t[rand(0..s.length)].update(city:s[rand(50..s.length)])
	u[rand(0..s.length)].update(dog: v[rand(20..50)])
	u[rand(20..s.length)].update(dogsitter: t[rand(20..50)])
=end

tp s
tp t
tp v
tp u

