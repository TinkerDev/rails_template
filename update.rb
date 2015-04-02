@template_path = File.dirname(__FILE__)
@recipes_path  = File.join(@template_path, 'recipes')

apply "#{@recipes_path}/base.rb"

@update_recipes_flow.each do |recipe|
  if recipe_performing_confirmed?(recipe)
    notify_recipe_performing(recipe)
    perform_recipe(recipe)
  end
end