@template_path = File.dirname(__FILE__)
@recipes_path  = File.join(@template_path, 'recipes')
apply "#{@recipes_path}/base.rb"

@new_recipes_flow.each do |recipe|
  perform_recipe(recipe)
end