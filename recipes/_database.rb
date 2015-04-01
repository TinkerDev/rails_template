def recipe_database
  file 'config/database.yml.example', File.read("#{@static_files_path}/database.yml").gsub('db_name', @application_name.downcase)
  file 'config/database.yml', File.read("#{@static_files_path}/database.yml").gsub('db_name', @application_name.downcase)
end