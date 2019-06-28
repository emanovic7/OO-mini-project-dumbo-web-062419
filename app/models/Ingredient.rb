
class Ingredient
  attr_accessor :name

  @@ingredients = []

  def initialize(name)
    @name = name
    @@ingredients << self
  end

  def self.all
    @@ingredients
  end

end


# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
