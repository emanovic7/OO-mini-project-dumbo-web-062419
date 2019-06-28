require_relative '../config/environment.rb'




  user1 = User.new("Chris Brown")
  user2 = User.new("Rick Ross")

  recipe1 = Recipe.new("Chicken")
  recipe2 = Recipe.new("Salmon")


  recipecard1 = RecipeCard.new(1800)
  recipecard1.user = user2
  recipecard1.recipe = recipe2


  recipecard2 = RecipeCard.new(5)
  recipecard2.user = user1
  recipecard2.recipe = recipe1


  recipeingredient1 = RecipeIngredient.new("one")
  recipeingredient1.recipe = recipe2
  

binding.pry
