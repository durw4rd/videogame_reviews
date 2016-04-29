print "Seeding initial categories..."

pc_games = Category.create(name: "PC Games")
xbox_games = Category.create(name: "XBox Games")
playstation_games = Category.create(name: "Playstation Games" )
board_games = Category.create(name: "Board Games")

puts "finished seeding #{Category.count} cats!"

print "Seeding games..."

tank_batalion = Game.create(title: "Tank Batallion", category: pc_games)
age_of_empires = Game.create(title: "Age of Empires", category: pc_games)
mortal_combat = Game.create(title: "Mortal Combat", category: pc_games)

galaga = Game.create(title: "Galaga", category: xbox_games)
pacman = Game.create(title: "Pacman", category: xbox_games)
frogger = Game.create(title: "Frogger", category: xbox_games)

need_for_speed = Game.create(title: "Need for Speed", category: playstation_games)
fight_the_monkey = Game.create(title: "Fight the Monkey", category: playstation_games)

settlers = Game.create(title: "Settlers", category: board_games)
rifugio = Game.create(title: "Rifugio", category: board_games)
risk = Game.create(title: "Risk", category: board_games)

puts "finished seeding #{Game.count} games!"

print "Seeding users..."

alan = User.create( email: "alan@email.com", password: "abcd1234", name: "Alan" )
bart = User.create( email: "bart@email.com", password: "abcd1234", name: "Bart" )
cecile = User.create( email: "cecile@email.com", password: "abcd1234", name: "Cecile" )

puts "finished seeding #{User.count} users!"

print "Seeding reviews..."

Review.create( title: "Cool game", review: "This is a very cool game.", user: alan, game: tank_batalion )
Review.create( title: "Bad game", review: "This is a very bad game.", user: alan, game: age_of_empires )
Review.create( title: "Mediocre game", review: "This is a very mediocre game.", user: alan, game: mortal_combat )
Review.create( title: "Dont play this one", review: "Not worth playing at all!", user: bart, game: galaga )
Review.create( title: "Blah", review: "This is completely useless review...", user: bart, game: pacman )
Review.create( title: "Didnt play this one", review: "Submitted the review by mistake!", user: bart, game: frogger )
Review.create( title: "My favorite", review: "Recommended by all means!!!", user: bart, game: need_for_speed )
Review.create( title: "For kids", review: "Dont play it unless youre a kid.", user: cecile, game: fight_the_monkey )
Review.create( title: "Boring", review: "This is a very boring game.", user: cecile, game: settlers )
Review.create( title: "Fun game", review: "This is a very funny game.", user: cecile, game: rifugio )
Review.create( title: "Not a game", review: "This is not a game.", user: cecile, game: risk )

puts "finished seeding #{Review.count} reviews!"
