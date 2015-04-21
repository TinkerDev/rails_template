def recipe_layout
  run "rm app/views/layouts/application.html.erb"
  copy_application_file('app/views/layouts/application.slim')
  copy_application_file('app/views/layouts/_navigation.slim')
  copy_application_file('app/views/layouts/_messages.slim')
  copy_application_file('config/navigation.rb')
end