print "Seeding initial categories..."

pc_games = Category.create(name: "PC Games")
xbox_games = Category.create(name: "XBox Games")
playstation_games = Category.create(name: "Playstation Games" )
board_games = Category.create(name: "Board Games")

puts "finished seeding #{Category.count} cats!"

print "Seeding games..."

Game.create(title: "Tank Batallion", category: pc_games)
Game.create(title: "Age of Empires", category: pc_games)
Game.create(title: "Mortal Combat", category: pc_games)


Game.create(title: "Galaga", category: xbox_games)
Game.create(title: "Pacman", category: xbox_games)
Game.create(title: "Frogger", category: xbox_games)


Game.create(title: "Need for Speed", category: playstation_games)
Game.create(title: "Fight the Monkey", category: playstation_games)


Game.create(title: "Settlers", category: board_games)
Game.create(title: "Rifugio", category: board_games)
Game.create(title: "Risk", category: board_games)

puts "finished seeding #{Game.count} games!"
