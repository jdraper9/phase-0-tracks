# Method to create a list (create_list)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split up string input into array called temp_array with values seperated by ' '
  # define empty hash called list
  # For each value of temp_array, assign that value to a key in the list hash with a default value of 3
  # Within the list hash, the key will represent the item and the value will represent the quantity 
  # print the list to the console -- call print_list method
# output: hash containing items (key) and quantity (value)

def create_list(str)
	temp_array = str.split(' ')
	list = {}
	temp_array.each do |item|
		list[item] = 3
	end
	print_list(list)
	list
end

# Method to add an item to a list (add_item)
# input: item name, optional quantity, hash
# steps: 
  # In argument, set default value of quantity to 1
  # Add item to hash as key and quantity as value
# output: hash with item and quantity pair added to it

def add_item(item, quantity = 1, list)
	list[item] = quantity
end

# Method to remove an item from the list (remove_item)
# input: item name, hash
# steps:
  # IF argument passed to method is equivalent to a key in hash
    # delete that key-value pair from hash
# output: hash with item removed

def remove_item(item, list)
	list.delete_if {|x| x == item}
end

# Method to update the quantity of an item (update_quantity)
# input: item name, new quantity, list
# steps: 
  # Iterate through hash. IF key in hash is equivalent to item name passed in argument
    # change value of quantity to new quantity
# output: hash with value of item updated

def update_quantity(item, new_quant, list)
	list.each do |item_in_list, old_quant|
		if item_in_list == item
			list[item_in_list] = new_quant
		end
	end
end

# Method to print a list and make it look pretty (print_list)
# input: hash
# steps:
  # For each value in hash
    # print "* #{key}, qty: #{value}" to its own line
# output: nothing required

def print_list(list)
	list.each do |item, quant|
		puts "* #{item}, qty: #{quant}"
	end
end

### ---- Driver code ----

new_list = create_list("")
add_item("Lemonade", 2, new_list)
add_item("Tomatoes", 3, new_list)
add_item("Onions", 1, new_list)
add_item("Ice Cream", 4, new_list)
remove_item("Lemonade", new_list)
update_quantity("Ice Cream", 1, new_list)
print_list(new_list)

## ---- Reflect ----

# *What did you learn about pseudocode from working on this challenge?
# =>  I learned that it is very useful! It allows you to break down a task into approachable parts
# *What are the tradeoffs of using arrays and hashes for this challenge?
# => I used a hash because it allowed me to store the quantity of each item. This made it easier to access each item by name
# *What does a method return?
# => Ruby uses implicit return, meaning that the value of the last line of code is automatically returned
# *What kind of things can you pass into methods as arguments?
# => variables (such as strings, integers, arrays, hashes, booleans), other methods
# *How can you pass information between methods?
# =>  Through parameters/arguments
# *What concepts were solidified in this challenge, and what concepts are still confusing?
# => I'm not sure yet what the point of *not* using a class in this example is. Seems like it would be much
	# more straightforward just to use instance variables in this case. 



