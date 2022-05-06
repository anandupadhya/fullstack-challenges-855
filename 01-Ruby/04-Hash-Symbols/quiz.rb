# grades = [19, 8, 11, 15, 13]

# sum = 0
# grades.each do |value|
#   sum += value
# end
# puts sum.to_f / grades.size

# # with string concatenation
# def capitalize_name(first_name, last_name)
#   return first_name.capitalize + " " + last_name.capitalize
# end

# # with string interpolation
# def capitalize_name(first_name, last_name)
#   return "#{first_name.capitalize} #{last_name.capitalize}"
# end

# puts 2 + 2 #=> 4
# puts "2" + "2" #=> "22"



# fruits = ["banana", "peach", "watermelon", "orange"]

# # Print out "peach" from the fruits array in the terminal
# puts fruits[1]
# # Add an "apple" to the fruits array
# fruits << "apple"
# fruits.push("apple")
# # Replace "watermelon" by "pear"
# fruits[2] = "pear"
# # Delete "orange"
# fruits.delete("orange")

# city = { "name" => "Paris", "population" => 2000000 }
# city = { :name => "Paris", :population => 2000000 }
# city = { name: "Paris", population: 2000000 }

# # Print out the name of the city
# puts city[:name]
# # Add the Eiffel Tower to city with the `:monument` key
# city[:monument] = "Eiffel Tower"
# # Update the population to 2000001
# city[:population] = 2000001
# # What will the following code return?
# city[:mayor] #=> nil

# fruits = ["banana", "peach", "watermelon", "orange"]

# fruits.each do |fruit|
#   puts fruit
# end

# fruits.map! do |fruit|
#   # fruit.upcase
#   fruit.length
# end
# p fruits
# # p fruits_upcase


p students = [ [ "john", 28, "USA" ], [ "mary", 25 ], [ "paul", 21, "France" ] ]
# students = [ {}, {}, {}]

students.map! do |student|
  # p student
  { name: student[0], age: student[1], country: student[2] }
end

p students
p students.first[:name]
