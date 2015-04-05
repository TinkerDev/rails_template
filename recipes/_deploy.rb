def recipe_deploy
  copy_application_file('Capfile')
  file 'config/deploy.rb', open(application_file_path("config/deploy.rb")).read.gsub('app_name', app_name.downcase)
  copy_application_file('config/deploy/production.rb')
end