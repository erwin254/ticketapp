# README

App en RoR configurada con la BD Postgresql, contiene:

- Registro de usuarios donde se pueden asignar Roles diferentes gema usada Devise CanCanCan. https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial
- El Administrador solo tiene una tabla para gestionar tickets (CRUD) donde puede asignarla a un usuario especifico.
- El Usuario solo posee una lista de tickets asignados y un botón para generar un Checked.
- El login de usuario discrimina que tipo de usuario es y muestra el contenido asociado al tipo de usuario.

Para levantar el proyecto en localhost Se requiere tener intalado Ruby on Rails 5.1 y PosgreSQL 10 

Enlaces para windows 10:
	
RoR https://www.youtube.com/watch?v=3D9d0wmwHVQ
PosgreSQL 10: https://www.postgresql.org/download/
PgAdmin: https://www.pgadmin.org/download/

Una vez levantado clonar el proyecto y ejecutar dentro de la carpeta del proyecto:

bundle install
rake db:migrate
rails db:seed

los usuarios que se crean son:

"testadmin@gmail.com", password: "123asd"
"testuser@gmail.com", password: "123asd"

se pueden crear mas usuarios de forma manual pero para darle permiso de admin deben ejecutar el siguiente comando desde rails console:

- desde la carpeta del proyecto ejecutar rails s
- buscar usuario user = User.find(XXXX) (XXXX es el id del usuario)
- luego asignar el permiso user.add_role "admin"

Framework CSS usado Bootstrap 4.
https://github.com/twbs/bootstrap-rubygem

Deploy en Heroku https://pacific-escarpment-15272.herokuapp.com/

para hacer tu propio deploy

create una cuenta en heroku luego ingresa estos campos en consola (solo si sigues el tutorial para windows 10)

- heroku login
- heroku create
- git push heroku master
- heroku run rake db:migrate
- heroku run rails db:seed

