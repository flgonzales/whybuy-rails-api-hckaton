# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all

Item.create(name: "Drill", description: "Very nice electric Makita drill, you can use for all the small construction tasks in and around the house", availability: true, start_aval: Date.today())
Item.create(name: "Wheelbarrow", description: "Brand new wheelbarrow, very nice to do all your heavy lifting", availability: true, start_aval: Date.today())
Item.create(name: "Shovel", description: "Beautifull iron shovel havent been used yet, so if you need to dig a hole this shovel wont let you down", availability: false, start_aval: Date.today())
Item.create(name: "Iron man suit", description: "The amazing Iron Man suit, known form the movies. Build for lightweight titanium and very user friendly", availability: true, start_aval: Date.today())
Item.create(name: "Rope", description: "Very strong, almost brand new robe. You can use it for moving or bondage", availability: false, start_aval: Date.today())

Category.delete_all

Category.create(description: "Gardening")
Category.create(description: "Bike")
Category.create(description: "Painting")

User.delete_all

User.create(first_name: "Mike", last_name: "Anderson", user_name: "Madmike", zipcode: "3417gp", adress:"heeswijk 187 Montfoort", email:"mike@test.com", encrypted_password:"password")
User.create(first_name: "Lisa", last_name: "Veldhuizen", user_name: "LisaV", zipcode: "3552ac", adress:"hogelanden 60 Utrecht", email:"lisa@test.com", encrypted_password:"password")
User.create(first_name: "Merel", last_name: "Groen", user_name: "Mergroen", zipcode: "3512ac", adress:"jansvel 35 Utrecht", email:"merel@test.com", encrypted_password:"password")
