Что это?
========
Удобная штука для создания и обновления своих рельсовых приложений

Как использовать
============
  Если создаем новое приложение

    $ rails new Blog -m https://raw.githubusercontent.com/TinkerDev/rails_template/master/new.rb

  Если обновляем приложение

    $ bin/rake rails:template LOCATION=https://raw.githubusercontent.com/TinkerDev/rails_template/master/update.rb

  Если хотим исполнить какойто рецепт

    $ bin/rake rails:template LOCATION=https://raw.githubusercontent.com/TinkerDev/rails_template/master/custom.rb

Рецепты
=======

* rubyversion - ставит последнюю версию руби
* gitignore - добавляет файл .gitignore
* database - предустаналивает config/database.yml и config/database.yml.example
* gems - фигачит следующие гемы
    * carrierwave - initializers/carrierwave.rb и app/uploders/application_uploader.rb
* layout - добавляет вьюхи лейаута бутстрапа на слиме и удаляет дефолтные
* assets - добавляет ассеты бутстрапа