@template_path = File.dirname(__FILE__)
@recipes_path  = File.join(@template_path, 'recipes')
apply "#{@recipes_path}/base.rb"

custom_recipe = ask('Какой рецепт исполнить?')

perform_recipe(custom_recipe)