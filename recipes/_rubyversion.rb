def recipe_rubyversion
  file '.ruby-version', '2.2.2'
  run 'rvm install 2.2.2'
end