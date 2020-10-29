class Recipe
  
  attr_accessor :title, :ingredients, :href
  
  @@all = []
  
  def initialize
    @@all << self 
  end
  
end