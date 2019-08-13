# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
  picture: File.open(Rails.root.join('db/fixtures/uses/Nassim.jpg')))
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
joker = Van.create!(
  title: 'Super van', 
  brand: "Volkswagen", 
  model: "T3 joker", 
  price_per_day: "60€", 
  picture: File.open(Rails.root.join('db/fixtures/vans/T3joker.webp')), 
  address: "Boulevard Stalingrad, Nantes 44300", 
  user: axel)

stylevan = Van.create!(
  title: "Van pratique",
  brand: "Peugeot",
  model: "Stylevan Boréal IV",
  price_per_day: "90€",
  picture: File.open(Rails.root.join('db/fixtures/vans/Stylevan.webp')), 
  address: "Place Saint Félix, Nantes 44300",
  user: axel)

poss = Van.create!(
  title: "Economique et confortable",
  brand: "Citroen",
  model: "Possl Compster",
  price_per_day: "64€",
  picture: File.open(Rails.root.join('db/fixtures/vans/TPossl.jpg')), 
  address: "Chemin de Bonneville, Nantes 44300",
  user: axel)


# Nina
bay = Van.create!(
  title: "Old school classic",
  brand: "Volkswagen",
  model: "T2B Bay window Westfalia",
  price_per_day: "65€",
  picture: File.open(Rails.root.join('db/fixtures/vans/T2B.webp')), 
  address: "Rue des columières, Nantes 44300",
  user: nina)

marco = Van.create!(
  title: "Chique",
  brand: "Mercedes",
  model: "Viano Marco Polo",
  price_per_day: "72€",
  picture: File.open(Rails.root.join('db/fixtures/vans/viano.webp')), 
  address: "Rue Félibien, Nantes 44300",
  user: nina)

vivaro = Van.create!(
  title: "Mini camping car",
  brand: "Opel",
  model: "Vivaro",
  price_per_day: "60€",
  picture: File.open(Rails.root.join('db/fixtures/vans/vivaro.webp')), 
  address: "Boulevard Paul Chabas, Nantes 44300",
  user: nina)


# Bastien
trafic = Van.create!(
  title: "Petit fourgon douillé",
  brand: "Renault",
  model: "Trafic",
  price_per_day: "65€",
  picture: File.open(Rails.root.join('db/fixtures/vans/trafic.webp')), 
  address: "Place gralin, Nantes 44300",
  user: bastien)

california = Van.create!(
  title: "Petit van pour 4",
  brand: "Volkswagen",
  model: "California",
  price_per_day: "70€",
  picture: File.open(Rails.root.join('db/fixtures/vans/california.webp')), 
  address: "St Donatien-Malakoff, Nantes 44300",
  user: bastien)

combi = Van.create!(
  title: "Envie de faire un week end dépaysant dans un univers année 70",
  brand: "Volkswagen",
  model: "Combi",
  price_per_day: "65€",
  picture: File.open(Rails.root.join('db/fixtures/vans/combi.jpg')), 
  address: "Le Rocher d'Enfer, Nantes 44300",
  user: bastien)


#Nassim
transporter = Van.create!(
  title: "Confort et mobile",
  brand: "Volkswagen",
  model: "Transporter T5",
  price_per_day: "50€",
  picture: File.open(Rails.root.join('db/fixtures/vans/transporterT5.webp')), 
  address: "Rue des Landes, Nantes 44300",
  user: nassim)

renault = Van.create!(
  title: "Neuf",
  brand: "Renault",
  model: "Trafic 2018",
  price_per_day: "60€",
  picture: File.open(Rails.root.join('db/fixtures/vans/trafic2018.webp')), 
  address: "Île de Nantes, Nantes 44200",
  user: nassim)

vito = Van.create!(
  title: "Confort et mobile",
  brand: "Mercedes",
  model: "Vito Marco Polo 2000",
  price_per_day: "58€",
  picture: File.open(Rails.root.join('db/fixtures/vans/vito.webp')), 
  address: "Rue Général Buat, Nantes 44000",
  user: nassim)
puts 'Finished creating vans'

######################################################

puts "Creating rents..."
rent_axel = Rent.create!(
  begin_date: "2019-07-25",
  end_date: "2019-07-28",
  van: joker,
  user: axel,
  state: "accepted",
  total_price: "180€",
  )

second_rent_axel = Rent.create!(
  begin_date: "2019-08-08",
  end_date: "2019-08-12",
  van: poss,
  user: axel,
  state: "accepted",
  total_price: "256€",
  )

third_rent_axel = Rent.create!(
  begin_date: "2019-07-10",
  end_date: "2019-07-15",
  van: poss,
  user: axel,
  state: "declined",
  total_price: "320€",
  )

fourth_rent_axel = Rent.create!(
  begin_date: "2019-07-10",
  end_date: "2019-07-15",
  van: stylevan,
  user: axel,
  state: "pending",
  total_price: "450€",
  )

rent_nina = Rent.create!(
  begin_date: "2019-07-10",
  end_date: "2019-07-15",
  van: poss,
  user: nina,
  state: "accepted",
  total_price: "256€",
  )

second_rent_nina = Rent.create!(
  begin_date: "2019-07-25",
  end_date: "2019-07-28",
  van: joker,
  user: nina,
  state: "accepted",
  total_price: "180",
  )

puts "Finished creating rents"