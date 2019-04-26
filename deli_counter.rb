katz_deli = []
# empty array , aim is create a string(s) to put names(customers) in the array by building a method #

def take_a_number(array, name) # method
  array.push(name)

# .push to add or append (something) to array

  position = array.index(name)

 # .index to access the number of the postion in the queue

  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."

   #puts out that string and return the string at the end of the method.

   # example : "Welcome, Grace. You are number 1 in line."

  return name, position
end


take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Tom")
take_a_number(katz_deli, "Alan")

# assigning the names to be added to the string, allucating number to the names(customers)



def line(array)
  if array.length == 0
    puts "The line is currently empty."

    # to delare nobody is in the Deli line

  else
    message = "The line is currently:"

    # declaring a string with a name to add at the end (:)

  array.each_with_index do |value, index|
    message += " #{index.to_i+1}. #{value}"

# .value to allucate what number is attacted to the name(customer)

  end
  puts "#{message}"

  # connecting the value with the statement

  end
end

line(katz_deli)


def now_serving(array)

  # now this method is used to create 2 different statements, to expain who is being served or not.
  if array.empty? == true
    puts "There is nobody waiting to be served!"

  elsif array.empty? == false
    puts "Currently serving #{array.shift}."

    # .shift removes the item(number) from the array and leaves the name(customer)

    # if the statement contains no elements = true
    # if it contains a the array(name = customer) = false
  end
end
