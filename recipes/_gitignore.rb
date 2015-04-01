def recipe_gitignore
  file '.gitignore', open("#{@static_files_path}/.gitignore").read
end