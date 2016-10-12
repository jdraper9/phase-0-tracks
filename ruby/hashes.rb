# Interior designer psuedocode

#Create an empty hash, which will be filled with user inputs
#Prompt user for client's name, age, number of children, decor theme, whether or not they like suede
#After each prompt, create a new hash key and store user input as the value
#Display values of hash to screen
#Ask user whether they want to make any changes with specific responses of key names
#If answer is none
	#do nothing
#Else
	#ask what the new value should be and store it in a new variable
#Store the new value into corresponding key
#print updated hash

data = {}

puts "What is your name?"
data[:name] = gets.chomp
puts "How old are you"
data[:age] = gets.to_i
puts "How many children do you have?"
data[:kids] = gets.to_i
puts "What decor theme do you like?"
data[:decor_theme] = gets.chomp
puts "Do you like suede?"
suede_booleanator = gets.chomp
if suede_booleanator == 'yes'
	data[:suede] = true
else
	data[:suede] = false
end
puts data

puts "Would you like to make any changes? (Options: name, age, kids, decor_theme, suede, none)"
update = gets.chomp
if update == "none"
	puts "Great!"
elsif update == "suede"
	data[:suede] = !data[:suede]
	puts data
else
	puts "What is the new value?"
	update_value = gets.chomp
	data[update.to_sym] = update_value
	puts data
end
