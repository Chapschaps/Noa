# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy bookings"
Booking.destroy_all
puts "Destroy animals"
Animal.destroy_all

puts "Destroy Users"
User.destroy_all




puts 'Creating user...'

 leo = User.new( {
    username:      'chapschaps',
    address:      'Paris',
    first_name:     'Leo',
    last_name: 'Chapute',
    contact: '0650399222',
    email: 'leo@gmail.com',
    password: '123456'
  })

  nadia = User.new ({
    username:      'nadiachou',
    address:      'Sydney',
    first_name:     'Nadia',
    last_name: 'Auger',
    contact: '069999999',
    email: 'nadia@gmail.com',
    password: '123456'

  })

 leo.save
 nadia.save
puts 'Finished!'


puts 'Creating animals...'

file = URI.open('https://images.unsplash.com/photo-1559096996-3b5e8f025ab3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

 locky = Animal.new({
    name:      'Locky',
    size:      'XS',
    specie:     'dog',
    location: 'Sydney',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'ugly dog',
    age: 0,
    price: 0
  })

 locky.photo.attach(io: file, filename: 'locky.jpg', content_type: 'image/jpg')

 locky.user = nadia
 locky.save

file = URI.open('https://images.unsplash.com/photo-1533069503512-c7d739db4bdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')


  romeo= Animal.new ({
    name:      'Romeo',
    size:      'XS',
    specie:     'dog',
    location: 'Paris',
    sexe: 'Male',
    risk_factor:     'X',
    user_id: 1,
    description: 'this is Leo\'s dog',
    age: 4,
    price: 300
  })

 romeo.photo.attach(io: file, filename: 'romeo.jpg', content_type: 'image/jpg')

  romeo.user = leo
  romeo.save

file = URI.open('https://images.unsplash.com/photo-1552410260-0fd9b577afa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

    aslan = Animal.new({
    name:      'Aslan',
    size:      'L',
    specie:     'Lion',
    location: 'Narnia',
    sexe: 'Male',
    risk_factor:     'XX',
    user_id: 1,
    description: 'The king of Narnia',
    age: 20,
    price: 20
  })

aslan.photo.attach(io: file, filename: 'aslan.jpg', content_type: 'image/jpg')
aslan.user = leo
aslan.save
puts 'Finished!'

puts 'Creating bookings...'

 vacances = Booking.new({
    status:      'requested',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })

 vacances.user = leo
 vacances.animal = locky

 vacances.save

puts 'Finished!'


