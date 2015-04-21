def recipe_assets
  run "rm app/assets/javascripts/application.js"
  run "rm app/assets/stylesheets/application.css"
  copy_application_file('app/assets/javascripts/application.js.coffee')
  copy_application_file('app/assets/stylesheets/application.css.sass')
end