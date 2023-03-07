# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create the game
puts "seeding game"
new_game = Game.create(statuts: "pending")
puts "finished seeding game"

# Create the users
puts "seeding users"
user_briag = User.create!(email: "briag.martin@gmail.com", password: "password", password_confirmation: "password", nickname: "Briag dit le petit zizi", score: 0)
user_baptiste = User.create!(email: "baptil@gmail.com", password: "password", password_confirmation: "password", nickname: "Baptiste", score: 0)
user_charles = User.create!(email: "charleswoehl@gmail.com", password: "password", password_confirmation: "password", nickname: "Charles", score: 0)
puts "seeded #{User.count} users"
puts "finished seeding users"

# Create the players
puts "seeding players"
player_one = Player.create(user: user_briag, game: new_game)
player_two = Player.create(user: user_baptiste, game: new_game)

# Create the characteristics
puts "seeding characteristics"
cheveux_courts = Characteristic.create(name: "cheveux courts")
cheveux_longs = Characteristic.create(name: "cheveux longs")
chauve = Characteristic.create(name: "chauve")
cheveux_boucles = Characteristic.create(name: "cheveux bouclés")
cheveux_blonds = Characteristic.create(name: "cheveux blonds")
cheveux_bruns = Characteristic.create(name: "cheveux bruns")
cheveux_roux = Characteristic.create(name: "cheveux roux")
cheveux_noirs = Characteristic.create(name: "cheveux noirs")
cheveux_blancs = Characteristic.create(name: "cheveux blancs")
lunettes = Characteristic.create(name: "lunettes")
barbe = Characteristic.create(name: "barbe")
moustache = Characteristic.create(name: "moustache")
chapeau = Characteristic.create(name: "chapeau")
boucles_doreilles = Characteristic.create(name: "boucles d'oreilles")
yeux_bleus = Characteristic.create(name: "yeux bleus")
yeux_marrons = Characteristic.create(name: "yeux marrons")
homme = Characteristic.create(name: "homme")
femme = Characteristic.create(name: "femme")
puts "seeded #{Characteristic.count} characteristics"
puts "finished seeding characteristics"

# Create the characters
puts "seeding characters"
alex = Character.create(name: "Alex")
alfred = Character.create(name: "Alfred")
anita = Character.create(name: "Anita")
anne = Character.create(name: "Anne")
bernard = Character.create(name: "Bernard")
bill = Character.create(name: "Bill")
charles = Character.create(name: "Charles")
claire = Character.create(name: "Claire")
david = Character.create(name: "David")
eric = Character.create(name: "Eric")
frans = Character.create(name: "Frans")
george = Character.create(name: "George")
herman = Character.create(name: "Herman")
joe = Character.create(name: "Joe")
maria = Character.create(name: "Maria")
max = Character.create(name: "Max")
paul = Character.create(name: "Paul")
peter = Character.create(name: "Peter")
philip = Character.create(name: "Philip")
richard = Character.create(name: "Richard")
robert = Character.create(name: "Robert")
sam = Character.create(name: "Sam")
susan = Character.create(name: "Susan")
tom = Character.create(name: "Tom")
puts "seeded #{Character.count} characters"
puts "finished seeding characters"

# Create the features
puts "seeding features"

# Alex
puts "seeding features for Alex"
alex.features.create(characteristic: cheveux_courts)
alex.features.create(characteristic: cheveux_noirs)
alex.features.create(characteristic: yeux_marrons)
alex.features.create(characteristic: moustache)
alex.features.create(characteristic: homme)
puts "finished seeding features for Alex"

#Alfred
puts "seeding features for Alfred"
alfred.features.create(characteristic: cheveux_longs)
alfred.features.create(characteristic: cheveux_roux)
alfred.features.create(characteristic: yeux_bleus)
alfred.features.create(characteristic: moustache)
alfred.features.create(characteristic: homme)
puts "finished seeding features for Alfred"

#Anita
puts "seeding features for Anita"
anita.features.create(characteristic: cheveux_longs)
anita.features.create(characteristic: cheveux_blonds)
anita.features.create(characteristic: yeux_bleus)
anita.features.create(characteristic: femme)
puts "finished seeding features for Anita"

#Anne
puts "seeding features for Anne"
anne.features.create(characteristic: cheveux_courts)
anne.features.create(characteristic: cheveux_boucles)
anne.features.create(characteristic: cheveux_noirs)
anne.features.create(characteristic: yeux_marrons)
anne.features.create(characteristic: boucles_doreilles)
anne.features.create(characteristic: femme)
puts "finished seeding features for Anne"

#Bernard
puts "seeding features for Bernard"
bernard.features.create(characteristic: cheveux_courts)
bernard.features.create(characteristic: cheveux_bruns)
bernard.features.create(characteristic: yeux_marrons)
bernard.features.create(characteristic: chapeau)
bernard.features.create(characteristic: homme)
puts "finished seeding features for Bernard"

#Bill
puts "seeding features for Bill"
bill.features.create(characteristic: chauve)
bill.features.create(characteristic: cheveux_roux)
bill.features.create(characteristic: yeux_marrons)
bill.features.create(characteristic: barbe)
bill.features.create(characteristic: homme)
puts "finished seeding features for Bill"

#Charles
puts "seeding features for Charles"
charles.features.create(characteristic: cheveux_courts)
charles.features.create(characteristic: cheveux_blonds)
charles.features.create(characteristic: yeux_marrons)
charles.features.create(characteristic: moustache)
charles.features.create(characteristic: homme)
puts "finished seeding features for Charles"

#Claire
puts "seeding features for Claire"
claire.features.create(characteristic: cheveux_courts)
claire.features.create(characteristic: cheveux_roux)
claire.features.create(characteristic: yeux_marrons)
claire.features.create(characteristic: lunettes)
claire.features.create(characteristic: chapeau)
claire.features.create(characteristic: femme)
puts "finished seeding features for Claire"

#David
puts "seeding features for David"
david.features.create(characteristic: cheveux_courts)
david.features.create(characteristic: cheveux_blonds)
david.features.create(characteristic: yeux_marrons)
david.features.create(characteristic: barbe)
david.features.create(characteristic: homme)
puts "finished seeding features for David"

#Eric
puts "seeding features for Eric"
eric.features.create(characteristic: cheveux_courts)
eric.features.create(characteristic: cheveux_blonds)
eric.features.create(characteristic: yeux_marrons)
eric.features.create(characteristic: chapeau)
eric.features.create(characteristic: homme)
puts "finished seeding features for Eric"

#Frans
puts "seeding features for Frans"
frans.features.create(characteristic: cheveux_courts)
frans.features.create(characteristic: cheveux_boucles)
frans.features.create(characteristic: cheveux_roux)
frans.features.create(characteristic: yeux_marrons)
frans.features.create(characteristic: homme)
puts "finished seeding features for Frans"

#George
puts "seeding features for George"
george.features.create(characteristic: cheveux_courts)
george.features.create(characteristic: cheveux_blancs)
george.features.create(characteristic: yeux_marrons)
george.features.create(characteristic: chapeau)
george.features.create(characteristic: homme)
puts "finished seeding features for George"

#Herman
puts "seeding features for Herman"
herman.features.create(characteristic: cheveux_chauve)
herman.features.create(characteristic: cheveux_roux)
herman.features.create(characteristic: yeux_marrons)
herman.features.create(characteristic: homme)
puts "finished seeding features for Herman"

#Joe
puts "seeding features for Joe"
joe.features.create(characteristic: cheveux_courts)
joe.features.create(characteristic: cheveux_boucles)
joe.features.create(characteristic: cheveux_blonds)
joe.features.create(characteristic: yeux_marrons)
joe.features.create(characteristic: lunettes)
joe.features.create(characteristic: homme)

#Maria
puts "seeding features for Maria"
maria.features.create(characteristic: cheveux_longs)
maria.features.create(characteristic: cheveux_bruns)
maria.features.create(characteristic: yeux_marrons)
maria.features.create(characteristic: boucles_doreilles)
maria.features.create(characteristic: chapeau)
maria.features.create(characteristic: femme)
puts "finished seeding features for Maria"

#Max
puts "seeding features for Max"
max.features.create(characteristic: cheveux_courts)
max.features.create(characteristic: cheveux_boucles)
max.features.create(characteristic: cheveux_noirs)
max.features.create(characteristic: yeux_marrons)
max.features.create(characteristic: moustache)
max.features.create(characteristic: homme)
puts "finished seeding features for Max"

#Paul
puts "seeding features for Paul"
paul.features.create(characteristic: cheveux_courts)
paul.features.create(characteristic: cheveux_blancs)
paul.features.create(characteristic: yeux_marrons)
paul.features.create(characteristic: lunettes)
paul.features.create(characteristic: homme)
puts "finished seeding features for Paul"

#Peter
puts "seeding features for Peter"
peter.features.create(characteristic: cheveux_courts)
paul.features.create(characteristic: cheveux_blancs)
paul.features.create(characteristic: yeux_bleus)
paul.features.create(characteristic: homme)
puts "finished seeding features for Peter"

#Philip
puts "seeding features for Philip"
philip.features.create(characteristic: cheveux_courts)
philip.features.create(characteristic: cheveux_boucles)
philip.features.create(characteristic: cheveux_noirs)
philip.features.create(characteristic: yeux_marrons)
philip.features.create(characteristic: barbe)
philip.features.create(characteristic: homme)
puts "finished seeding features for Philip"

#Richard
puts "seeding features for Richard"
richard.features.create(characteristic: chauve)
richard.features.create(characteristic: cheveux_bruns)
richard.features.create(characteristic: yeux_marrons)
richard.features.create(characteristic: barbe)
richard.features.create(characteristic: homme)
puts "finished seeding features for Richard"

#Robert
puts "seeding features for Robert"
robert.features.create(characteristic: cheveux_courts)
robert.features.create(characteristic: cheveux_bruns)
robert.features.create(characteristic: yeux_bleus)
robert.features.create(characteristic: homme)
puts "finished seeding features for Robert"

#Sam
puts "seeding features for Sam"
sam.features.create(characteristic: chauve)
sam.features.create(characteristic: cheveux_blancs)
sam.features.create(characteristic: yeux_marrons)
sam.features.create(characteristic: lunettes)
sam.features.create(characteristic: homme)
puts "finished seeding features for Sam"

#Susan
puts "seeding features for Susan"
susan.features.create(characteristic: cheveux_longs)
susan.features.create(characteristic: cheveux_blancs)
susan.features.create(characteristic: yeux_marrons)
susan.features.create(characteristic: femme)
puts "finished seeding features for Susan"

#Tom
puts "seeding features for Tom"
tom.features.create(characteristic: chauve)
tom.features.create(characteristic: cheveux_noirs)
tom.features.create(characteristic: yeux_bleus)
tom.features.create(characteristic: lunettes)
tom.features.create(characteristic: homme)
puts "finished seeding features for Tom"

puts "finished seeding features"

# Create the cards
puts "seeding cards"
card_1 = Card.create(character: alex, player: player_one)
card_2 = Card.create(character: alfred, player: player_one)
card_3 = Card.create(character: anita, player: player_one)
card_4 = Card.create(character: anne, player: player_one)
