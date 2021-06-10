# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
bundle install

rake db:create
rake db:migrate

only admin can create communities
add the role,user_roles in the console using model(Role, UserRole)

join the communities and  then post the comments
