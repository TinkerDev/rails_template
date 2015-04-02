def recipe_gems
  run "rm Gemfile.lock"
  copy_application_file('Gemfile')

  prepare_carrierwave
end

def prepare_carrierwave
  copy_application_file('initializers/carrierwave.rb')
  copy_application_file('app/uploaders/application_uploader.rb')
end