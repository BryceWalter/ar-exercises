require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"
surrey = Store.create!(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
surrey.save
whistler = Store.create!(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
whistler.save
yaletown = Store.create!(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
yaletown.save

@mens_stores = Store.where(['mens_apparel = true'])
puts @mens_stores

i = 0
while i < @mens_stores.size do
  puts @mens_stores[i].name
  puts @mens_stores[i].annual_revenue
  i +=1
end

@womens_stores = Store.where(['womens_apparel = ? and annual_revenue < ?', 'true', '1000000'])
puts @womens_stores
# Your code goes here ...
