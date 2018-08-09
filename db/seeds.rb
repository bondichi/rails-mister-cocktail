# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredient1 = Ingredient.create(name: "lemon")
ingredient2 = Ingredient.create(name: "ice")
ingredient3 = Ingredient.create(name: "mint leaves")

cocktail1 = Cocktail.create(name: "Apple Jack")
cocktail2 =Cocktail.create(name: "Martini")
cocktail3 =Cocktail.create(name: "Negroni")

dose_1 = Dose.create({ description: "a shot", cocktail_id: cocktail1.id, ingredient: ingredient1 })
dose_2 = Dose.create({ description: "a nip", cocktail: cocktail2, ingredient: ingredient3 })
dose_3 = Dose.create({ description: "a cup", cocktail: cocktail3, ingredient: ingredient2 })
