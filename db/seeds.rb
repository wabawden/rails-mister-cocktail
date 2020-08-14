# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
file = open(url).read
cocktails = JSON.parse(file)
drinks = cocktails["drinks"]
drinks.each do |drink|
    Ingredient.create(name: drink["strIngredient1"])
end




#<ActiveRecord::Relation [#<Cocktail id: 1, name: "Cosmopolitan", created_at: "2020-08-13 11:57:59", updated_at: "2020-08-13 16:12:17", image_url: "https://cf.ltkcdn.net/cocktails/images/orig/252997...">, #<Cocktail id: 4, name: "Bloody Mary", created_at: "2020-08-13 12:02:03", updated_at: "2020-08-13 16:15:05", image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws....">, #<Cocktail id: 3, name: "Cuba Libra", created_at: "2020-08-13 12:01:49", updated_at: "2020-08-13 16:17:48", image_url: "https://cuban.recipes/wp-content/uploads//2017/12/...">, #<Cocktail id: 2, name: "Mojito", created_at: "2020-08-13 11:58:25", updated_at: "2020-08-13 16:19:38", image_url: "https://keyassets-p2.timeincuk.net/wp/prod/wp-cont...">, #<Cocktail id: 5, name: "Moscow Mule", created_at: "2020-08-13 16:30:15", updated_at: "2020-08-13 20:13:54", image_url: "https://hips.hearstapps.com/vidthumb/images/moscow...">, #<Cocktail id: 6, name: "Zombie", created_at: "2020-08-13 20:15:14", updated_at: "2020-08-13 20:15:14", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3A...">]>