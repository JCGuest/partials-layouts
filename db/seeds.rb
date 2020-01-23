# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
# 10.times do 
#     Author.create(name: Faker::Name.unique.name)
# end

# 10.times do 
#     Genre.create(name: Faker::Book.unique.genre)
# end

Author.all.each do |author|
    author.books.build(title: Faker::Book.unique.title, genre: Genre.all.sample).save
end