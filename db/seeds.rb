print "Seeding initial categories..."

Category.create([
  { name: "PC Games" },
  { name: "XBox Games" },
  { name: "Playstation Games" },
  { name: "Wee Games" }
])

puts "finished seeding#{Category.count} cats!"
