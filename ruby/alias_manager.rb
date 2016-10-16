# Alias Manager Pseudocode #

########

#Define two string variables, one with all the vowels and the other with all consonants.

$vowels = 'aeiou'.chars
$consonants = 'bcdfghjklmnpqrstvwxyz'.chars

#write method that takes 2 words and swaps them (name_swap)
	#define method that receives a string, uses .split(' ') to break up into an array with two items
	#Returns a string with the words swapped

def name_swap(name)
	name_array = name.split(' ')
	name_array[0],name_array[1] = name_array[1],name_array[0]
	new_name = name_array.join(' ')
end

#write method that takes a letter and checks if it is a vowel (is_vowel)

def is_vowel(letter)
	vowel = false
	$vowels.each {|x| 
		if x == letter
			vowel = true
		end
	}
	vowel
end

#write method that takes a letter and checks if it is a consonant (is_cons)

def is_cons(letter)
	cons = false
	$consonants.each {|x|
		if x == letter
			cons = true
		end
	}
	cons
end


#write method that iterates vowels (next_vowel)

def next_vowel(letter)
	if letter == 'u'
		next_vowel = 'a'
	else
		i = 0
		until $vowels[i] == letter
			i += 1
		end
		next_vowel = $vowels[i+1]
	end
end

#write method that iterates consonants (next_cons)

def next_cons(letter)
	if letter == 'z'
		next_cons = 'b'
	else
		i = 0
		until $consonants[i] == letter
			i += 1
		end
		next_vowel = $consonants[i+1]
	end
end

#write method that calls methods above properly to create the final name
	#change all letters to downcase
	#call name_swap
	#if is_vowel
		#call next_vowel
	#elsif is_consonant
		#call next_cons
	#else 
		#write error message
	#put final name in a string, upcase, return


def alias_maker(name)
	error = false
	name = name_swap(name.downcase)
	name_array = name.chars
	name_array.map! {|letter|
		if is_vowel(letter)
			letter = next_vowel(letter)
		elsif is_cons(letter)
			letter = next_cons(letter)
		elsif letter == ' '
			letter = ' '
		else
			error = true
		end
	}
	if !error
		# This next bit (which I consider sloppy) just joins the array of characters, splits them into first and
		# last names, capitalizes each, the joins them again into one string with a space between
		new_alias = name_array.join.split(' ') 
		new_alias.map! {|name| name.capitalize}
		new_alias = new_alias.join(' ')
	else
		puts "Please only enter letters in the alphabet or spaces"
	end
	new_alias
end

# user interface

input = nil
list = {}
while input != 'quit'
	puts "Please enter a name to create an alias, or \'quit\' to exit"
	input = gets.chomp
	if input != 'quit'
		p alias_maker(input)
		list[input] = alias_maker(input)
	end
end
list.each {|name, new_alias| puts "#{name} is also known as #{new_alias}"}






