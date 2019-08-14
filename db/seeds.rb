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
joker = Van.create!(
  title: 'Super van', 
  description: "Nous proposons de vous louer Francis. Nous avons déjà eu le plaisir de voyager avec notre chienne à bord de ce véhicule.",
  brand: "Volkswagen", 
  model: "T3 joker", 
  price_per_day: 60, 
  picture: File.open(Rails.root.join('db/fixtures/vans/T3joker.webp')), 
  address: "Boulevard Stalingrad, Nantes 44300", 
  owner: axel)

stylevan = Van.create!(
  title: "Van pratique",
  description: "Nous proposons notre Van flambant neuf Stylevan sur base Peugeot expert 180ch boîte automatique et grip contrôle pour prendre du plaisir dès le début de votre road trip.",
  brand: "Peugeot",
  model: "Stylevan Boréal IV",
  price_per_day: 90,
  picture: File.open(Rails.root.join('db/fixtures/vans/Stylevan.webp')), 
  address: "Place Saint Félix, Nantes 44300",
  owner: axel)

poss = Van.create!(
  title: "Economique et confortable",
  description: "Notre van est idéal pour voyager à 4 en famille grâce à son toit relevable et son couchage en bas une fois la banquette allongée.",
  brand: "Citroen",
  model: "Possl Compster",
  price_per_day: 64,
  picture: File.open(Rails.root.join('db/fixtures/vans/Possl.jpg')), 
  address: "Chemin de Bonneville, Nantes 44300",
  owner: axel)


# Nina
bay = Van.create!(
  title: "Old school classic",
  description: "Bonjour, Si vous souhaitez un voyage dans les 70’s, une belle expérience et un dépaysement total, nous vous proposons à la location notre combi VOLKSWAGEN T2B Bay Window, équipé Westfalia, 1.6 essence, de 1974, se prénommant GiGi.",
  brand: "Volkswagen",
  model: "T2B Bay window Westfalia",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/T2B.webp')), 
  address: "Rue des columières, Nantes 44300",
  owner: nina)

marco = Van.create!(
  title: "Chique",
  description: "Nous vous proposons de vous évadez à bord de notre Vito Marco Polo. Parfaitement adapté pour un weekend au soleil ou un road trip de plusieurs semaines.",
  brand: "Mercedes",
  model: "Viano Marco Polo",
  price_per_day: 72,
  picture: File.open(Rails.root.join('db/fixtures/vans/viano.webp')), 
  address: "Rue Félibien, Nantes 44300",
  owner: nina)

vivaro = Van.create!(
  title: "Mini camping car",
  description: "Ce mini camping car vous emmènera partout où vous le souhaitez. Il passe aisément sous les barres de 2 m voire moins et se gare facilement. Il est équipé d'un porte 2 vélos, d'une kitchenette avec évier et feu, d'un frigo, d'une USB chargeur de téléphone et de bloc de rangements.",
  brand: "Opel",
  model: "Vivaro",
  price_per_day: 60,
  picture: File.open(Rails.root.join('db/fixtures/vans/vivaro.webp')), 
  address: "Boulevard Paul Chabas, Nantes 44300",
  owner: nina)


# Bastien
trafic = Van.create!(
  title: "Petit fourgon douillé",
  description: "Ce petit fourgon aménagé permet de passer sous les barrières et de se rendre au coeur des lieux les plus insolites tout en restant en classe 1 sur l'autoroute.",
  brand: "Renault",
  model: "Trafic",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/trafic.webp')), 
  address: "Place gralin, Nantes 44300",
  owner: bastien)

california = Van.create!(
  title: "Petit van pour 4",
  description: "Idéal de 2 à 4 personnes, ce california de 2018 est flambant neuf. (avril 2018, - 20 000 km) C'est un VAN, et donc il passe quasiment partout comme une voiture.",
  brand: "Volkswagen",
  model: "California",
  price_per_day: 70,
  picture: File.open(Rails.root.join('db/fixtures/vans/california.webp')), 
  address: "St Donatien-Malakoff, Nantes 44300",
  owner: bastien)

combi = Van.create!(
  title: "Envie de faire un week end dépaysant dans un univers année 70",
  description: "Bonjour, Notre Van est très fonctionnel. Idéal pour deux personnes. Permet d'être en autonomie totale avec l'eau, l'ectricité, le réfrigérateur (une partie congélateur) et les plaques de cuisson pendant pratiquement une semaine sans démarrer le véhicule grâce à deux grosses batteries auxiliaires",
  brand: "Volkswagen",
  model: "Combi",
  price_per_day: 65,
  picture: File.open(Rails.root.join('db/fixtures/vans/combi.jpg')), 
  address: "Le Rocher d'Enfer, Nantes 44300",
  owner: bastien)


#Nassim
transporter = Van.create!(
  title: "Confort et mobile",
  description: " Tres economique turbo diesel grâce sa hauteur 1.9 metres vous permet acces bord de plage .super marche .prix peage classe 1 comme une voiture  grace a sa taille possible de se garer n importe ou  il est considere comme une voiture particuliere",
  brand: "Volkswagen",
  model: "Transporter T5",
  price_per_day: 50,
  picture: File.open(Rails.root.join('db/fixtures/vans/transporterT5.webp')), 
  address: "Rue des Landes, Nantes 44300",
  owner: nassim)

renault = Van.create!(
  title: "Neuf",
  description: "A louer van aménagé sur Renault Trafic 2017 1.6L dCi 125 cv twin turbo avec Start&Stop. Peinture gris platine métallisé. Châssis H1L1 : longueur 4m99, largeur 1m96, hauteur 1m99. 5 places assises et 4 couchages.",
  brand: "Renault",
  model: "Trafic 2018",
  price_per_day: 60,
  picture: File.open(Rails.root.join('db/fixtures/vans/trafic2018.webp')), 
  address: "Île de Nantes, Nantes 44200",
  owner: nassim)

vito = Van.create!(
  title: "Confort et mobile",
  description: "Son look discret et ces petites dimensions vous permettent de passer partout (accès sous toutes les barres de parking car hauteur - de 2 mètres) et les péages sont au même prix qu'une voiture.",
  brand: "Mercedes",
  model: "Vito Marco Polo 2000",
  price_per_day: 58,
  picture: File.open(Rails.root.join('db/fixtures/vans/vito.webp')), 
  address: "Rue Général Buat, Nantes 44000",
  owner: nassim)
puts 'Finished creating vans'

######################################################

puts "Creating rents..."

rent_nina = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-08-14",
  van: joker,
  traveler: nina,
  state: "accepted",
  total_price: "120€",
  )

rent_bastien = Rent.create!(
  begin_date: "2019-08-15",
  end_date: "2019-08-17",
  van: stylevan,
  traveler: bastien,
  state: "accepted",
  total_price: "270€",
  )

rent_nassim = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-08-13",
  van: poss,
  traveler: axel,
  state: "declined",
  total_price: "64€",
  )

second_rent_nina = Rent.create!(
  begin_date: "2019-08-12",
  end_date: "2019-07-21",
  van: stylevan,
  traveler: nina,
  state: "pending",
  total_price: "810€",
  )

puts "Finished creating rents"