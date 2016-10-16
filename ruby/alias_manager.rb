# Alias Manager Pseudocode #

########

#Define two string variables, one with all the vowels and the other with all consonants.

#write method that takes 2 words and swaps them (name_swap)
	#define method that receives a string, uses .split(' ') to break up into an array with two items
	#Returns a string with the words swapped

#write method that takes a letter and checks if it is a vowel (is_vowel)
#write method that takes a letter and checks if it is a consonant (is_cons)
#write method that iterates vowels (next_vowel)
#write method that iterates consonants (next_cons)

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


vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

def name_swap(name)
	name_array = name.split(' ')
	name_array[0],name_array[1] = name_array[1],name_array[0]
	new_name = name_array.join(' ')
end
