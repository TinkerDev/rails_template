def recipe_ansible
  file 'ansible/playbook.yml', open(application_file_path("ansible/playbook.yml")).read.gsub('app_name', app_name.downcase)
  copy_application_file('ansible/configs/database.yml')
  copy_application_file('ansible/configs/nginx.conf')
end