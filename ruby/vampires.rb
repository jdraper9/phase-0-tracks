num_employees = 0
puts 'How many employees will be processed?'
until num_employees > 0
	num_employees = gets.to_i
	if num_employees <= 0
		puts 'Please enter a positive number'
	end
end
while num_employees != 0
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
	allergy_check = nil
	puts 'Please list any allergies you have and type "done" when finished'
	until allergy_check == 'done' || allergy_check == 'sunshine'
		allergy_check = gets.chomp.downcase
	end
	if allergy_check == 'sunshine'
		result = 'Probably a vampire'
	end
	puts result
	num_employees -= 1
end
puts 'Actually, never mind! What do these questions have to do with anything? Let\'s all be friends.'