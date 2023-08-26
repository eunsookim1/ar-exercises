require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# class Store

#   attr_accessor :store_name
#   attr_accessor :annual_revenue
#   attr_accessor :mens_apparel
#   attr_accessor :womens_apparel

#   def initialize
#     @burnaby = Store.new(store_name :'Burnaby', annual_revenue :300000, mens_apparel :true, womens_apparel :true)
#     @richmond = Store.new(store_name :'Richmond', annual_revenue :1260000, mens_apparel :true, womens_apparel :true)
#     @Gastown = Store.new(store_name :'Gastown', annual_revenue :190000, mens_apparel :true, womens_apparel :false)
#   end

# Create the first store: Burnaby
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

# Create the second store: Richmond
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

# Create the third store: Gastown
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

  puts "Total number of stores: #{Store.count}"

# Create
# Active Record objects can be created from a hash, a block, or have their attributes manually set after creation. The new method will return a new object while create will return the object and save it to the databse. 

# For example, given a model User with attributes of name and occupation, the create method call will create and save a new record into the database:

# user = User.create(name: 'David', occupation: 'Code Artist')

# Using the new method, an object can be instantiated without being saved:
# user = User.new 
# user.name = 'David'
# user.occupation = 'Code Artist'

# A call to user.save will commit the record to the database.
# Finally, if a block is provided, both create and new will yield the new object to that block for initialization, while only create will persist the resulting object to the database:
# user = User.new do |u|
#   u.name = "David"
#   u.occupation = "Code Artist"
# end
