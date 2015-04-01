@template_path = File.dirname(ENV['LOCATION'])
@recipes_path  = File.join(@template_path, 'recipes')

apply "#{@recipes_path}/base.rb"
apply "#{@recipes_path}/flow.rb"

@recipes_flow.each do |recipe|
  if recipe_performing_confirmed?(recipe)
    notify_recipe_performing(recipe)
    perform_recipe(recipe)
  end
end