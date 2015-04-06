def recipe_gems
  run "rm Gemfile.lock"
  copy_application_file('Gemfile')

  prepare_secret_tokens
  prepare_carrierwave
end

def prepare_secret_tokens
  file 'config/initializers/secret_token.rb', open(application_file_path("config/initializers/secret_token.rb")).read.gsub('app_name', app_name.capitalize)
end

def prepare_carrierwave
  copy_application_file('initializers/carrierwave.rb')
  copy_application_file('app/uploaders/application_uploader.rb')
end