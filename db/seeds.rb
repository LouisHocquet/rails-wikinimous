# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts " >>> Reset Articles <<<"
Article.destroy_all
puts " >>> Create fake articles <<<"
10.times do 
  title = Faker::Movies::StarWars.character
  content = Faker::Movies::StarWars.quote
  new_article = Article.new(title: title, content: content)
  new_article.save
end
puts " >>> #{Article.count} articles created <<<"