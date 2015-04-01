def recipe_rubyversion
  file '.ruby-version', '2.2.1'
  run 'rvm install 2.2.1'
end