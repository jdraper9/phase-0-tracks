puts 'What is your name?'
name = gets.chomp
puts 'How old are you? What year were you born?'
age = gets.to_i
year = gets.to_i
puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic = gets.chomp.downcase
puts 'Would you like to enroll in the company\'s health insurance?'
insurance = gets.chomp.downcase
result = nil
if name == 'Drake Cula' || name == 'Tu Fang'
	result = 'Definitely a vampire.'
elsif (age == 2016 - year) && (garlic == 'yes' || insurance == 'yes')
	result = 'Probaly not a vampire'
elsif (age != 2016 - year) && garlic == 'no' && insurance == 'no'
	result = 'Almost certainly a vampire.'
elsif (age != 2016 - year) && (garlic == 'no' || insurance == 'no')
	result = 'Probably a vampire.'
else
	result = 'Results inconclusive'
end
puts result