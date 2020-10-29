class API 
  
  def self.fetch_results
    url = "http://www.recipepuppy.com/api/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    
    array_of_recipes = hash["results"]
    
    #title 
    #ingredients
    #href detialed instructions
    
    array_of_recipes.each do |results_hash|
      recipe = Recipe.new
      recipe.name = results_hash["title"]
      recipe.ingredients = results_hash["ingredients"]
      recipe.details = results_hash["href"]
    end
    
    
  end
  
end
  