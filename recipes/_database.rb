def recipe_database
  file 'config/database.yml.example', open(application_file_path("config/database.yml")).read.gsub('app_name', app_name.downcase)
  file 'config/database.yml', open(application_file_path("config/database.yml")).read.gsub('app_name', app_name.downcase)
end