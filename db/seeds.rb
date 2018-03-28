# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create default Admin
unless Role.find_by_name("admin").present?
  User.create!(email: "admin@api.com", password: "123123", name: "admin")
  User.last.add_role(:admin)
  puts 'Admin created successfully'
end