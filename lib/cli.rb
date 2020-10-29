class CLI 
  
  def start 
    puts "Welcome Chef"
    API.fetch_results
    self.list_recipe
  end
  
  def list_recipe
    #list of recipe options
    puts "Would you like to choose a recipe?"
    puts "Type 'yes' to select a recipe or 'no' to exit"
    
    user_input = gets.strip
    
    if user_input == "yes"
      puts "What will you make today?"
      display_list_of_recipes
      
    end
    
  end
  
  def display_list_of_recipes
    Recipe.all.each do |recipes|
      # binding.pry
      puts recipes.title
    end
      
  end
  
end