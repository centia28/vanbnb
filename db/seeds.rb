# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Rent.destroy_all
Van.destroy_all
User.destroy_all

puts 'Creating Users...'
bastien = User.new(
  first_name: "Bastien",
  last_name: 'Moinard',
  email: 'bast.moinard@gmail.com',
  password: 'azerty',
  phone_number: "06 56 43 93 13",
  picture: File.open(Rails.root.join('db/fixtures/users/Bastien.jpg')))
bastien.save!

nassim = User.new(
  first_name: "Nassim",
  last_name: 'Bouskia',
  email: 'nassim.bouskia@gmail.com',
  password: 'azerty',
  phone_number: "06 44 30 10 20",
  picture: File.open(Rails.root.join('db/fixtures/users/Nassim.jpg')))
nassim.save!

nina = User.new(
  first_name: "Nina",
  last_name: 'Tchalla',
  email: 'nina.tchalla@gmail.com',
  password: 'azerty',
  phone_number: "06 93 75 91 77",
  picture: File.open(Rails.root.join('db/fixtures/users/Nina.jpg')))
nina.save!

axel = User.new(
  first_name: "Axel",
  last_name: 'Prevoteaux',
  email: 'axel.prevoteaux@gmail.com',
  password: 'azerty',
  phone_number: "06 02 55 18 35",
  picture: File.open(Rails.root.join('db/fixtures/users/Axel.jpg')))
axel.save!
puts 'Finish creating users'

######################################################

puts 'Creating vans...'
# Axel
kombi1 = Van.create!(
  title: 'Old Kombi car',
  description: "Have a nice ride in this old but confortable car.",
  brand: "Volkswagen",
  model: "Kombi",
  price_per_day: 60,
  picture: File.open(Rails.root.join('db/fixtures/vans/kombi1.jpg')),
  address: "Boulevard Stalingrad, Nantes 44300",
  owner: axel)

sleep(1)

vw1 = Van.create!(
  title: "Authentic Volkswagen T1",
  description: "Have a unique expérience with this nice Volkswagen T1 Bus from 1961.",
  brand: "Volkswagen",
  model: "T1",
  price_per_day: 90,
  picture: File.open(Rails.root.join('db/fixtures/vans/vw1.jpg')),
  address: "Place Saint Félix, Nantes 44300",
  owner: axel)
sleep(1)

poss = Van.create!(
  title: "Green van",
  description: "Ideal van for family vacations, very confortable.",
  brand: "Citroen",
  model: "Possl Compster",
  price_per_day: 64,
  picture: File.open(Rails.root.join('db/fixtures/vans/green1.jpg')),
  address: "Chemin de Bonneville, Nantes 44300",
  owner: axel)
sleep(1)

yellow = Van.create!(
  title: "Yellow kitty",
  description: "Ideal van for family vacations, very confortable.",
  brand: "Volkswagen",
  model: "Possl Compster",
  price_per_day: 46,
  picture: File.open(Rails.root.join('db/fixtures/vans/yellow.jpg')),
  address: "Boulevard des poilus, Nantes 44300",
  owner: axel)
sleep(1)

# Nina
bay = Van.create!(
  title: "Old school classic",
  description: "Gigi is an old shcool Volkswagen combi",
  brand: "Volkswagen",
  model: "T2B Bay window Westfalia",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/vw2.jpg')),
  address: "Rue des columières, Nantes 44300",
  owner: nina)
sleep(1)

marco = Van.create!(
  title: "Chique red van",
  description: "This 'chic' Vito Marco Polo will be perfect for a weekend",
  brand: "Volkswagen",
  model: "Viano Marco Polo",
  price_per_day: 72,
  picture: File.open(Rails.root.join('db/fixtures/vans/red1.jpg')),
  address: "Rue Félibien, Nantes 44300",
  owner: nina)
sleep(1)

vivaro = Van.create!(
  title: "Mini camping car",
  description: "This mini camping car will take you whereever you want.",
  brand: "Opel",
  model: "Vivaro",
  price_per_day: 60,
  picture: File.open(Rails.root.join('db/fixtures/vans/red2.jpg')),
  address: "Boulevard Paul Chabas, Nantes 44300",
  owner: nina)
sleep(1)

bus = Van.create!(
  title: "Golden bus",
  description: "This mini bus car will take you whereever you want.",
  brand: "Volkswagen",
  model: "Vivaro",
  price_per_day: 90,
  picture: File.open(Rails.root.join('db/fixtures/vans/bus.jpg')),
  address: "Rond point de Paris, Nantes 44300",
  owner: nina)
sleep(1)


# Bastien
trafic = Van.create!(
  title: "Perfect road trip van",
  description: "This van will be you best friend on the road.",
  brand: "Volkswagen",
  model: "Trafic",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/green2.jpg')),
  address: "Place gralin, Nantes 44300",
  owner: bastien)
sleep(1)

california = Van.create!(
  title: "Sweet maleny",
  description: "Ideal for two to four people, this van is also sweeted for weddings.",
  brand: "Volkswagen",
  model: "California",
  price_per_day: 70,
  picture: File.open(Rails.root.join('db/fixtures/vans/blue1.jpg')),
  address: "St Donatien-Malakoff, Nantes 44300",
  owner: bastien)
sleep(1)

combi = Van.create!(
  title: "Retro combi",
  description: "Meet my white retro van. Perfet for cosy weekend with friends.",
  brand: "Volkswagen",
  model: "Combi",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/white1.jpg')),
  address: "Le Rocher d'Enfer, Nantes 44300",
  owner: bastien)
sleep(1)

#Nassim
transporter = Van.create!(
  title: "Confort van",
  description: "Very economic van to go on raod or to the beach.",
  brand: "Volkswagen",
  model: "Transporter T5",
  price_per_day: 50,
  picture: File.open(Rails.root.join('db/fixtures/vans/red3.jpg')),
  address: "Rue des Landes, Nantes 44300",
  owner: nassim)
sleep(1)

renault = Van.create!(
  title: "Love and peace",
  description: "Coloured van to go on the road.",
  brand: "Renault",
  model: "Trafic 2018",
  price_per_day: 60,
  picture: File.open(Rails.root.join('db/fixtures/vans/coloured.jpg')),
  address: "Île de Nantes, Nantes 44200",
  owner: nassim)
sleep(1)

vito = Van.create!(
  title: "Go green!!",
  description: "Very discret and cosy. Have a nice time with our confortable.",
  brand: "Mercedes",
  model: "Vito Marco Polo 2000",
  price_per_day: 58,
  picture: File.open(Rails.root.join('db/fixtures/vans/green3.jpg')),
  address: "Rue Général Buat, Nantes 44000",
  owner: nassim)
sleep(1)

vito2 = Van.create!(
  title: "Luxirious mercedes!!",
  description: "Get VIP in this luxirious mercedes van.",
  brand: "Mercedes",
  model: "Curbed",
  price_per_day: 100,
  picture: File.open(Rails.root.join('db/fixtures/vans/mercedes.jpg')),
  address: "Gare sud, Nantes 44000",
  owner: nassim)
sleep(1)

puts 'Finished creating vans'

######################################################

puts "Creating rents..."

rent_nina = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-08-14",
  van: kombi1,
  traveler: nina,
  state: "accepted",
  total_price: "120",
  )

rent_bastien = Rent.create!(
  begin_date: "2019-08-15",
  end_date: "2019-08-17",
  van: bus,
  traveler: bastien,
  state: "accepted",
  total_price: "180",
  )

rent_nassim = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-08-13",
  van: california,
  traveler: axel,
  state: "declined",
  total_price: "70",
  )

second_rent_nina = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-08-21",
  van: vito,
  traveler: nina,
  state: "pending",
  total_price: "522",
  )

puts "Finished creating rents"
