require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = open(url).read
data = JSON.parse(response)

data['drinks'].each do |hash|
  Ingredient.create(name: hash['strIngredient1'])
end

20.times do |beer|
  Cocktail.create(name: Faker::Beer.name)
end
