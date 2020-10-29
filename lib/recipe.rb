class Recipe
  
  @@all = []
  
  attr_accessor :title, :ingredients, :details
  
  def initialize
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
end