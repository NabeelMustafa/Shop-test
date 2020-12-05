# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "=============  Generating product using rake task  ======================"
Rake::Task['default_products:generate_products'].invoke
puts "=============  Generating user  ======================"
User.create!(email: "user@mail.com", password: "user@123", password_confirmation: "user@123")