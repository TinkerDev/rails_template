def recipe_rubyversion
  file '.ruby-version', '2.3.0'
  run 'rvm install 2.3.0'
end