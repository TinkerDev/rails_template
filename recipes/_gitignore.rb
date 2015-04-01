def recipe_gitignore
  file '.gitignore', File.read("#{@static_files_path}/.gitignore")
end