# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "sugar")
Ingredient.create(name: "cherry")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "soda")
Ingredient.create(name: "wine")
Ingredient.create(name: "vodka")

array = ['']

1.times do
  drink = Cocktail.new ({name: 'Vodka'})
  drink.save
  dose = ({ description: '2 shots', cocktial_id: drink, ingredients: [Ingredient.all].sample })
  puts drink
end