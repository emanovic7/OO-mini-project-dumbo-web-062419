

class RecipeIngredient
  attr_accessor :name, :ingredient, :recipe

  @@recipeingredients = []

  def initialize(name)
    @name = name
    @@recipeingredients << self
  end


  def self.all
    @@recipeingredients
  end

end



#
# RecipeIngredient is the join between an ingredient and a recipe. This is a has-many-through relationship Build the following methods on the RecipeIngredient class
# RecipeIngredient.all should return all of the RecipeIngredient instances
# RecipeIngredient#ingredient should return the ingredient instance
# RecipeIngredient#recipe should return the recipe instance
