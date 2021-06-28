# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pass.destroy_all
User.destroy_all

ben = User.create(username: "ben123", password: "ben123")
rachel = User.create(username: "rachel123", password: "rachel123")

Pass.create(title: "Pikes Peak", description: "description of Pikes Peak", distance: 50, hm: 5000, wishlist: true, done: false, user: ben)
Pass.create(title: "Mt. Evans", description: "description of Mt. Evans", distance: 40, hm: 3000, wishlist: true, done: true, user: ben)
Pass.create(title: "Stelvio", description: "description of the Stelvio", distance: 9, hm: 2000, wishlist: true, done: true, user: ben, image: "db/Stelvio.jpg")
Pass.create(title: "Grossglockner", description: "description of the Grossglockner", distance: 10, hm: 1000, wishlist: false, done: true, user: rachel)
Pass.create(title: "Galibier", description: "description of the Galibier", distance: 11, hm: 2500, wishlist: false, done: true, user: rachel)
Pass.create(title: "Grosse Scheidegg", description: "description of Grosse Scheidegg", distance: 12, hm: 800, wishlist: false, done: true, user: rachel)
