require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Class Store < ActiveRecord::Base
#   has_many :employees
#   # Rest of your Store model code
# end

# class Employee < ActiveRecord::Base
#   belongs_to :store
# end

class Store < ActiveRecord::Base
  has_many :employees
  # Rest of your Store model code
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Emily", last_name: "Kim", hourly_rate: 55)
@store2.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 50)
@store2.employees.create(first_name: "Klark", last_name: "Lo", hourly_rate: 65)
@store1.employees.create(first_name: "Klark", last_name: "Lo", hourly_rate: 60)

puts "Store 1 has #{@store1.employees.count} employees"
puts "Store 2 has #{@store2.employees.count} employees"
puts "Total number of employees at all stores: #{Employee.count}"
# Why do I keep getting issues if I use a different store other than 1 and 2?
# NOTES:
# Since ApplicationRecord inherits from ActiveRecord::Base, your application's models will have a number of helpful methods available to them. For example, you can use the ActiveRecord::Base.table_name = method to customize the table name that should be used. 

#class Product < ApplicationRecord
  # self.table_name = "my_products"
  # end
# If you do so, you will have to manually define the class name that is hosting the fixtures (my_products.yml) using the set_fixture_class method in your test definition:
# class ProductTest < ActiveSupport:TestCase
#   set_fixture_class my_products: Product
#   fixtures :my_products
#   # ...
# end