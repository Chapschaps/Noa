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


file = URI.open('https://avatars0.githubusercontent.com/u/53259210?v=4')


 leo = User.new( {
    username:      'chapschaps',
    address:      'Paris',
    first_name:     'Leo',
    last_name: 'Chapute',
    contact: '0650399222',
    email: 'leo@gmail.com',
    password: '123456'
  })

  leo.photo.attach(io: file, filename: 'leo.jpg', content_type: 'image/jpg')


file = URI.open('https://avatars1.githubusercontent.com/u/54894352?v=4')


  nadia = User.new ({
    username:      'nadiachou',
    address:      'Sydney',
    first_name:     'Nadia',
    last_name: 'Auger',
    contact: '069999999',
    email: 'nadia@gmail.com',
    password: '123456'

  })

nadia.photo.attach(io: file, filename: 'nadia.jpg', content_type: 'image/jpg')


 leo.save
 nadia.save
puts 'Finished!'


puts 'Creating animals...'

file = URI.open('https://images.unsplash.com/photo-1559096996-3b5e8f025ab3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

 locky = Animal.new({
    name:      'Locky',
    size:      'XS',
    specie:     'Dog',
    location: 'Sydney',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
     age: 0,
    price: 0
  })

 locky.photo.attach(io: file, filename: 'locky.jpg', content_type: 'image/jpg')

 locky.user = nadia
 locky.save

file = URI.open('https://images.unsplash.com/photo-1507146426996-ef05306b995a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')


  romeo= Animal.new ({
    name:      'Romeo',
    size:      'XS',
    specie:     'Dog',
    location: 'Paris',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 4,
    price: 300
  })

 romeo.photo.attach(io: file, filename: 'romeo.jpg', content_type: 'image/jpg')

  romeo.user = leo
  romeo.save

  file = URI.open('https://images.unsplash.com/photo-1525682691400-309fa6755eb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')


  draco= Animal.new ({
    name:      'Draco',
    size:      'L',
    specie:     'Snake',
    location: 'Marseille',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 4,
    price: 200
  })

 draco.photo.attach(io: file, filename: 'draco.jpg', content_type: 'image/jpg')

  draco.user = nadia
  draco.save

file = URI.open('https://images.unsplash.com/photo-1552410260-0fd9b577afa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

    aslan = Animal.new({
    name:      'Aslan',
    size:      'L',
    specie:     'Lion',
    location: 'Narnia',
    sexe: 'Male',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 20,
    price: 20
  })

aslan.photo.attach(io: file, filename: 'aslan.jpg', content_type: 'image/jpg')
aslan.user = nadia
aslan.save


file = URI.open('https://images.unsplash.com/photo-1530824395616-b1ec7fac4aff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

    choupette = Animal.new({
    name:      'Choupette',
    size:      'XL',
    specie:     'Giraffe',
    location: 'Pigal',
    sexe: 'Female',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 12,
    price: 98
  })

choupette.photo.attach(io: file, filename: 'choupette.jpg', content_type: 'image/jpg')
choupette.user = nadia
choupette.save

    test = Animal.new({
    name:      'test_with_no_photo',
    size:      'XL',
    specie:     'pff',
    location: 'oupse',
    sexe: 'Female',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 12,
    price: 666
  })

test.user = leo
test.save

puts 'Finished!'

puts 'Creating bookings...'

 vacances = Booking.new({
    status:      'requested',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })

 vacances.user = leo
 vacances.animal = aslan

 vacances.save


 vacances = Booking.new({
    status:      'validated',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })

 vacances.user = leo
 vacances.animal = locky

 vacances.save



 vacances = Booking.new({
    status:      'canceled',
    starting_date:    Date.today - 14,
    ending_date:    Date.today - 4
  })

 vacances.user = leo
 vacances.animal = draco

 vacances.save


 vacances = Booking.new({
    status:      'finished',
    starting_date:    Date.today - 34,
    ending_date:    Date.today - 15
  })

 vacances.user = leo
 vacances.animal = choupette

 vacances.save


puts 'Finished!'


