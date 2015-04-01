require 'open-uri'

@static_files_path = File.join(@template_path, 'static_files')
@application_name = Rails.application.class.parent_name

@recipes = [
  :rubyversion,
  :gitignore,
  :database
]

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

