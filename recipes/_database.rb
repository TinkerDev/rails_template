def recipe_database
  file 'config/database.yml.example', open("#{@static_files_path}/database.yml").read.gsub('db_name', app_name.downcase)
  file 'config/database.yml', open("#{@static_files_path}/database.yml").read.gsub('db_name', app_name.downcase)
end