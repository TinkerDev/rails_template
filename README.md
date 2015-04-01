Что это?
========
Удобная штука для создания и обновления своих рельсовых приложений

Как использовать
============

    $ rails new Blog -m https://raw.githubusercontent.com/TinkerDev/rails_template/master/new.rb

если у нас уже есть рельсовое приложение, то

    $ bin/rake rails:template LOCATION=https://raw.githubusercontent.com/TinkerDev/rails_template/master/update.rb

если хотим выполнить какойто отдельный рецепт

    $ bin/rake rails:template LOCATION=https://raw.githubusercontent.com/TinkerDev/rails_template/master/custom.rb