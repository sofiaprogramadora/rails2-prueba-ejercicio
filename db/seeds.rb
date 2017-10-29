# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

cat1 = Category.new(name: "bath")
cat2 = Category.new(name: "food")
cat3 = Category.new(name: "clothes")

cat1.save
cat2.save
cat3.save

pro1 = Product.new(category: cat1, name: "Shampoo", price: 1.21 )
pro2 = Product.new(category: cat1, name: "Soap", price: 2.21 )

pro3 = Product.new(category: cat2, name: "Fish", price: 0.21 )
Product.create(category: cat2, name: "Rice", price: 0.21 )

pro4 = Product.new(category: cat3, name: "Dress", price: 0.21 )
pro5 = Product.new(category: cat3, name: "Shoes", price: 0.21 )

pro1.save
pro2.save
pro3.save
pro4.save
pro5.save

Product.all.last.destroy

cats = Category.all

cats.each do |i|
	i.name = i.name.capitalize
	i.save
end