# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 @user = User.create(email: 'email@admin.com', password: 'password', password_confirmation: 'password')
 @user.add_role :admin
 Pricelimit.create(price: 5000)
  Pricelimit.create(price: 10000)
   Pricelimit.create(price: 15000)