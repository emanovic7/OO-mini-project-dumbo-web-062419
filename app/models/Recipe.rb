
class Recipe
  attr_accessor :name
  attr_reader :recipecard

  @@recipes = []

  def initialize(name)
    @name = name
    @@recipes << self
  end

  def self.all
    @@recipes
  end

  def recipecards
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end


  def self.most_popular
    recipecount = 0
    most_popular = nil

    @@recipes.each do |recipe|
      if recipe.recipecards.length > recipecount
        most_popular = recipe
        recipecount = recipe.recipecards.length
      end
    end

    most_popular
  end

  def users
    users = []
    RecipeCard.all.each do |recipecard|
      if recipecard.recipe == self
        users << recipecard.user
      end
    end
    users
  end

  def ingredients
    all_ingredients = []
    RecipeIngredient.all.select do |recipeingredient|
      if recipeingredient.recipe == self
        all_ingredients << recipeingredient.ingredient
    end
    all_ingredients
  end




end









#
# Recipe.all should return all of the recipe instances
# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# Recipe#users should return the user instances who have recipe cards with this recipe
# Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
