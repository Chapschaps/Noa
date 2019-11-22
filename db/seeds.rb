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
    address:      '3 rue mirbel, 75005, Paris',
    first_name:     'Leo',
    last_name: 'Chapute',
    contact: '0650399222',
    email: 'leo@gmail.com',
    password: '123456'
  })

  leo.photo.attach(io: file, filename: 'leo.jpg', content_type: 'image/jpg')
 leo.save


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


 nadia.save

 file = URI.open('https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-512')


   boris = User.new ({
    username:      'Boris',
    address:      'Londre',
    first_name:     'Boris',
    last_name: 'Papillard',
    contact: '069999999',
    email: 'boris@gmail.com',
    password: '123456'

  })

boris.photo.attach(io: file, filename: 'boris.jpg', content_type: 'image/jpg')
boris.save


 file = URI.open('https://i.pinimg.com/originals/24/c6/50/24c65066e5a0df1548b96f52f88fec74.jpg')



   donald = User.new ({
    username:      'TheDonald',
    address:      'Florida',
    first_name:     'Donald',
    last_name: 'Trump',
    contact: '069999999',
    email: 'donald@gmail.com',
    password: '123456'

  })

donald.photo.attach(io: file, filename: 'donald.jpg', content_type: 'image/jpg')
donald.save

 file = URI.open('https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/03/1516016506-vhp.jpg?crop=0.598xw:1.00xh;0.254xw,0&resize=480:*')



   tom = User.new ({
    username:      'Voldemort',
    address:      'Lille',
    first_name:     'Tom',
    last_name: 'Riddle',
    contact: '069999999',
    email: 'tom@gmail.com',
    password: '123456'

  })

tom.photo.attach(io: file, filename: 'tom.jpg', content_type: 'image/jpg')
tom.save

 file = URI.open('https://www.essence.com/wp-content/uploads/2018/06/image/2017/11/main/beyonce-tout_0-1472x1472.jpg')



   beyonce = User.new ({
    username:      'Queen-B',
    address:      'LA',
    first_name:     'Beyonce',
    last_name: 'Knowls',
    contact: '069999999',
    email: 'beyonce@gmail.com',
    password: '123456'

  })

beyonce.photo.attach(io: file, filename: 'beyonce.jpg', content_type: 'image/jpg')
beyonce.save

puts 'Finished!'


puts 'Creating animals...'

file = URI.open('https://images.unsplash.com/photo-1559096996-3b5e8f025ab3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

 locky = Animal.new({
    name:      'Locky',
    size:      'XS',
    specie:     'Dog',
    location: '63 Rue Jean-Pierre Timbaud, 75011 Paris',
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
    location: "3 rue de la main d'or, 75011, Paris",
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Romeo is a lovely puppy who loves playing with you. He is potty trained and does not bark too much. You will not regret renting him from me!',
    age: 1,
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
    location: '52 Avenue de la République, 75011 Paris',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligend',
    age: 4,
    price: 200
  })

 draco.photo.attach(io: file, filename: 'draco.jpg', content_type: 'image/jpg')

  draco.user = tom
  draco.save

file = URI.open('https://images.unsplash.com/photo-1552410260-0fd9b577afa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

    aslan = Animal.new({
    name:      'Aslan',
    size:      'L',
    specie:     'Lion',
    location: '3 rue mirbel, 75005, Paris',
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
    location: '3 rue mirbel, 75005, Paris',
    sexe: 'Female',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 12,
    price: 98
  })

choupette.photo.attach(io: file, filename: 'choupette.jpg', content_type: 'image/jpg')
choupette.user = nadia
choupette.save

file = URI.open('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=727&q=80')

 titit = Animal.new({
    name:      'Titi',
    size:      'XS',
    specie:     'Cat',
    location: ' 4 Rue de l\'École Polytechnique, 75005 Paris',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 3,
    price: 21
  })

 titit.photo.attach(io: file, filename: 'titit.jpg', content_type: 'image/jpg')

 titit.user = boris
 titit.save

 file = URI.open('https://images.unsplash.com/photo-1548247416-ec66f4900b2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=363&q=80')

 toto = Animal.new({
    name:      'Toto',
    size:      'S',
    specie:     'Cat',
    location: '1 Rue de Rivoli, 75001 Paris',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 8,
    price: 10
  })

 toto.photo.attach(io: file, filename: 'toto.jpg', content_type: 'image/jpg')

 toto.user = boris
 toto.save

file = URI.open('https://images.unsplash.com/photo-1567201080580-bfcc97dae346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')

 martin = Animal.new({
    name:      'Martin',
    size:      'S',
    specie:     'Pig',
    location: '11 Boulevard Dugommier, 13001 Marseille',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 8,
    price: 150
  })

 martin.photo.attach(io: file, filename: 'martin.jpg', content_type: 'image/jpg')

 martin.user = donald
 martin.save


 file = URI.open('https://images.unsplash.com/photo-1477764250597-dffe9f601ae8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')


 jayz = Animal.new({
    name:      'Jay-Z',
    size:      'L',
    specie:     'Tiger',
    location: '3 Avenue Bonneveine, 13008 Marseille',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 8,
    price: 150
  })

 jayz.photo.attach(io: file, filename: 'jayz.jpg', content_type: 'image/jpg')

 jayz.user = beyonce
 jayz.save

file = URI.open('https://images.unsplash.com/photo-1537318574534-7bfff307c4f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=731&q=80')


  nagini = Animal.new({
    name:      'Nagini',
    size:      'L',
    specie:     'Snake',
    location: '12 Place de la Gare, 59000 Lille',
    sexe: 'Male',
    risk_factor:     'XXXXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 8,
    price: 450
  })

 nagini.photo.attach(io: file, filename: 'nagini.jpg', content_type: 'image/jpg')

 nagini.user = tom
 nagini.save

 file = URI.open('https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80')


 rat = Animal.new({
    name:      'max',
    size:      'XS',
    specie:     'Rat',
    location: '2 Rue de Douai, 59000 Lille',
    sexe: 'Male',
    risk_factor:     'XXX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 0,
    price: 0
  })

 rat.photo.attach(io: file, filename: 'rat.jpg', content_type: 'image/jpg')

 rat.user = nadia
 locky.save

file = URI.open('https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')


  lucy= Animal.new ({
    name:      'Lucy',
    size:      'M',
    specie:     'Racoon',
    location: '235 Rue Pierre Legrand, 59000 Lille',
    sexe: 'Female',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 4,
    price: 300
  })

 lucy.photo.attach(io: file, filename: 'lucy.jpg', content_type: 'image/jpg')

  lucy.user = leo
  lucy.save

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

  draco.user = tom
  draco.save

file = URI.open('https://images.unsplash.com/photo-1539418561314-565804e349c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')

    julie = Animal.new({
    name:      'Julie',
    size:      'L',
    specie:     'Lion',
    location: '104 Boulevard Gambetta, 06000 Nice',
    sexe: 'Male',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantis',
    age: 20,
    price: 20
  })

julie.photo.attach(io: file, filename: 'julie.jpg', content_type: 'image/jpg')
julie.user = nadia
julie.save


file = URI.open('https://images.unsplash.com/photo-1530824395616-b1ec7fac4aff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')

    maya = Animal.new({
    name:      'Maya',
    size:      'M',
    specie:     'Dog',
    location: 'Via della Croce, 8, 00187 Roma RM, Italy',
    sexe: 'Female',
    risk_factor:     'XX',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!
Nisi aliquid repellat, cumque sequi, fugiat quaerat impedit necessitatibus d',
    age: 12,
    price: 98
  })

maya.photo.attach(io: file, filename: 'maya.jpg', content_type: 'image/jpg')
maya.user = nadia
maya.save

file = URI.open('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=727&q=80')

 cupcake = Animal.new({
    name:      'Cupcake',
    size:      'XS',
    specie:     'Cat',
    location: '250 Avenue Georges Clemenceau, 92000 Nanterre',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 3,
    price: 21
  })

 cupcake.photo.attach(io: file, filename: 'cupcake.jpg', content_type: 'image/jpg')

 cupcake.user = boris
 cupcake.save

 file = URI.open('https://images.unsplash.com/photo-1548247416-ec66f4900b2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=363&q=80')

 cookie = Animal.new({
    name:      'Cookie',
    size:      'S',
    specie:     'Cat',
    location: '29 Espl. Charles de Gaulle, 92000 Nanterre',
    sexe: 'Male',
    risk_factor:     'X',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate officiis enim eius tempora optio repellendus dolor deleniti odit sint dicta excepturi sequi explicabo, illum accusantium eligendi beatae! Unde, aperiam!',
    age: 8,
    price: 10
  })

 cookie.photo.attach(io: file, filename: 'cookie.jpg', content_type: 'image/jpg')

 cookie.user = boris
 cookie.save


puts 'Finished!'

puts 'Creating bookings...'

 def total_price(booking)
    nb_days = (booking.ending_date - booking.starting_date).to_i
    nb_days * booking.animal.price
  end

 vacances = Booking.new({
    status:      'requested',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })

 vacances.user = leo
 vacances.animal = aslan
 vacances.total_price = total_price(vacances)

 vacances.save


 vacances = Booking.new({
    status:      'validated',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })

 vacances.user = leo
 vacances.animal = locky
 vacances.total_price = total_price(vacances)

 vacances.save



 vacances = Booking.new({
    status:      'canceled',
    starting_date:    Date.today - 14,
    ending_date:    Date.today - 4
  })

 vacances.user = leo
 vacances.animal = draco
 vacances.total_price = total_price(vacances)

 vacances.save


 vacances = Booking.new({
    status:      'finished',
    starting_date:    Date.today - 34,
    ending_date:    Date.today - 15
  })
 vacances.user = leo
 vacances.animal = choupette
 vacances.total_price = total_price(vacances)

 vacances.save

 vacances = Booking.new({
    status:      'requested',
    starting_date:    Date.today + 14,
    ending_date:    Date.today + 23
  })
 vacances.user = donald
 vacances.animal = lucy
 vacances.total_price = total_price(vacances)

 vacances.save

  vacances = Booking.new({
    status:      'validated',
    starting_date:    Date.today + 14,
    ending_date:    Date.today + 18
  })
 vacances.user = tom
 vacances.animal = romeo
 vacances.total_price = total_price(vacances)

 vacances.save


  vacances = Booking.new({
    status:      'validated',
    starting_date:    Date.today + 3,
    ending_date:    Date.today + 12
  })
 vacances.user = nadia
 vacances.animal = romeo
 vacances.total_price = total_price(vacances)

 vacances.save

  vacances = Booking.new({
    status:      'requested',
    starting_date:    Date.today + 4,
    ending_date:    Date.today + 15
  })
 vacances.user = boris
 vacances.animal = lucy
 vacances.total_price = total_price(vacances)

 vacances.save

puts 'Finished!'


