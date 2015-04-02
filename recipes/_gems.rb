def recipe_gems
  run "rm Gemfile.lock"
  file 'Gemfile', open("#{@static_files_path}/Gemfile").read
end