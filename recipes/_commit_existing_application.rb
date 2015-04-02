def recipe_commit_existing_application
  git :init
  git add: '.', commit: '-m "rails new application"'
end