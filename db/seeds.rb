# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create([
  { name: "Drill", description: "Very nice electric Makita drill, you can use for all the small construction tasks in and around the house", availability: true, start_aval: date.now()},
  { name: "Wheelbarrow", description: "Brand new wheelbarrow, very nice to do all your heavy lifting", availability: true, start_aval: date.now()},
  { name: "Shovel", description: "Beautifull iron shovel havent been used yet, so if you need to dig a hole this shovel wont let you down", availability: false, start_aval: date.now()},
  { name: "Iron man suit", description: "The amazing Iron Man suit, known form the movies. Build for lightweight titanium and very user friendly", availability: true, start_aval: date.now()},
  { name: "Rope", description: "Very strong, almost brand new robe. You can use it for moving or bondage", availability: false, start_aval: date.now()}
   ])

  Todo.create([
   { title: "Build rails api", completed: true },
   { title: "Build ", completed: false }
])
