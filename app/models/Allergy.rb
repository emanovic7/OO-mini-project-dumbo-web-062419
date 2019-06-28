
class Allergy
  attr_accessor :user, :ingredient, :name

  @@allergies = []

  def initialize(name)
    @name = name
    @@allergies << self
  end

end
