require 'open-uri'

@application_files_path = File.join(@template_path, 'application_files')

@recipes = [
  :rubyversion,
  :gitignore,
  :database,
  :commit_existing_application,
  :gems
]

@new_recipes_flow = [:gitignore, :commit_existing_application, :rubyversion, :database, :gems]
@update_recipes_flow = [:gitignore, :rubyversion, :database, :gems]

def perform_recipe recipe
  if @recipes.include?(recipe.to_sym)
    notify_recipe_performing(recipe)
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

def copy_application_file file_name
  file file_name, application_file_path(file_name).read
end

def application_file_path file_name
  open("#{@application_files_path}/#{file_name}")
end

