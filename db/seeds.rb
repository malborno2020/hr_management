
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Role.create(name: "admin")
client = Role.create(name: "client")
visitor = Role.create(name: "visitor")

User.create(email: "joralmopro@gmail.com", password: "123456", role: admin)

15.times do
    user = User.create(email: Faker::Internet.email, password: "client", role: client)
    #Post.create(titulo: Faker::Book.title, contenido: Faker::Lorem.paragraph, usuario: usuario)
end

p "#{User.count} usuarios creados"
p "#{Role.count} roles creados"
# p "#{Post.count} post creados"
