# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cocktail1 = Cocktail.create(name: "Bloody Mary")
cocktail2 = Cocktail.create(name: "Old Fashioned")
cocktail3 = Cocktail.create(name: "Pimm's Cup")
ingredient1 = Ingredient.create(name: "Vodka")
ingredient2 = Ingredient.create(name: "Rhum")
ingredient3 = Ingredient.create(name: "Pimms")
ingredient4 = Ingredient.create(name: "Whisky")
