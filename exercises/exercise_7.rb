require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a new store name:"
user_store_name = gets.chomp

@user_store = Store.new(name: user_store_name)
@user_store.valid?

@user_store.errors.messages.each do |key, value|
  puts "Error: #{value}"
end

# Your code goes here ...
