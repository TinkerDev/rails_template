require 'open-uri'

@static_files_path = File.join(@template_path, 'static_files')
@application_name = app_name

@recipes = [
  :rubyversion,
  :gitignore,
  :database,
  :commit_existing_application
]

@new_recipes_flow = [:gitignore, :commit_existing_application, :rubyversion, :database]
@update_recipes_flow = [:gitignore, :rubyversion, :database]

def perform_recipe recipe
  if @recipes.include?(recipe.to_sym)
    notify_recipe_performing(recipe)
    puts "#{@recipes_path}/#{recipe}.rb"
    apply "#{@recipes_path}/_#{recipe}.rb"
    self.send("recipe_#{recipe}")
    true
  else
    puts "Нет рецепта: #{recipe}"
    false
  end
end

def recipe_performing_confirmed? recipe
  yes?("Исполнить рецепт #{recipe}?")
end

def notify_recipe_performing recipe
  puts "Исполняем рецепт #{recipe}"
end

