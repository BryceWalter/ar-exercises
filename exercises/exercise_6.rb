require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Ted", last_name: "Cruz", hourly_rate: "40")
@store1.employees.create(first_name: "Tim", last_name: "Criminski", hourly_rate: "40")
@store1.employees.create(first_name: "Terry", last_name: "Colo", hourly_rate: "40")
@store1.employees.create(first_name: "Tony", last_name: "Curt", hourly_rate: "40")
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: "40")
@store2.employees.create(first_name: "Jim", last_name: "Smokes", hourly_rate: "40")
@store2.employees.create(first_name: "Joan", last_name: "Smore", hourly_rate: "40")
@store2.employees.create(first_name: "Jerry", last_name: "Solo", hourly_rate: "40")
# Your code goes here ...
