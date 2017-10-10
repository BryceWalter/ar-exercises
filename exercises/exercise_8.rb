require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store1.employees.create(first_name: "Kevin", last_name: "Kostner", hourly_rate: "199")

kevin = Employee.find_by("first_name = 'Kevin'")

puts kevin.password
