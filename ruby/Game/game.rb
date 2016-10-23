# - Create Game class with the following attr_reader values:
# 	* guess_limit, guess_count, win, feedback (for rspec test)
# 	and the following attr_accessor values:
# 	* is_over

class Game
	attr_reader :guess_limit, :guess_count, :win, :feedback
	attr_accessor :is_over

# - Define initialize method with these instance variables, which takes a parameter called target_word:
# 	* target_word = argument
# 	* guess_limit = target_word.length * 2
# 	* guess_count = 0
# 	* is_over = false
# 	* win = false
# 	* guess_history = []   #array of past guesses
# 	* feedback = []       #an array similar to a hash... contains arrays of two values: a single letter and a boolean

	def initialize(target_word)
		@target_word = target_word
		@guess_limit = target_word.length*2
		@guess_count = 0
		@is_over = false
		@win = false
		@guess_history = []
		@feedback = []
		target_word.split('').each {|x| @feedback << [x, false]}
	end

# - Define check_word method that checks if parameter (guess) is equal to target_word.
# 	- Unless guess is within guess_history array
# 		- Add one to guess_count
# 		- Add guess to guess_history array
# 	- if guess = target_word
# 		- win = true
# 		- is_over = true
# 	- else
# 		- return false

	def check_word(guess)
		guess_used = false
		@guess_history.each do |x|
				if x == guess
					guess_used = true
				end
			end
		if !guess_used
			@guess_count += 1
			@guess_history << guess
		end
		if guess == @target_word
			@win = true
			@is_over = true
		else
			false
		end
	end

# - Define check_within method that checks if parameter (guess) is within target_word
# 	- use include? on parameter to see if it is included in target_word

	def check_within(guess)
		@target_word.include? guess
	end

# - Define update_feedback method that updates feedback hash. This method will only be called if check_within returns true, and accepts parameter guess
# 	- For each character in guess, check if this character is equal to a key letter in feedback hash (it should be because we already used check_within)
# 	- When that character reaches the correct key, set it's value to true
#   - also checks if feedback hash is equal to target word

	def update_feedback(guess)
		guess.split('').each do |guess_letter|
			@feedback.each do |target|
				if target[0] == guess_letter
					target[1] = true
				end
			end
		end
		all_true_check = true
		@feedback.each do |x|
			if !x[1]
				all_true_check = false
			end
		end
		if all_true_check
			@win = true
			@is_over = true
		end
	end

# - Define print_feedback method that reads feedback hash and prints letters which have been guessed by user
# 	- Create an empty array called temp_array
# 	- Iterate through feedback array, storing "_" in temp_array if a value is false or storing the key itself if a value is true
# 	- Finally, join temp_array as a string (with spaces betwen chars) and return this value

	def print_feedback
		temp_array = []
		@feedback.each do |x|
			if x[1]
				temp_array << x[0]
			else
				temp_array << '_'
			end
		end
		temp_array.join(' ')
	end


end

# - User interface...
# 	- Print "Welcome to the Hangman Game!"
#   - prompt user for word
# 	- store response as variable called target
# 	- create game instance with target as argument
# 	- While is_over returns false
# 		- Print "Please enter your guess. You have (guess_limit - guess_count) guesses remaining"
# 		- store guess as new variable current_guess
# 		- if check_word(current_guess) returns false
# 			-if check_within returns true
# 				- call update_feedback
# 				- print "Correct letters guessed so far: " + print_feedback
# 		- if guess_count = guess_limit
# 			- is_over = true
# 	- If win is true
# 		- print "Contrats! You've won in #{guess_count} tries"
# 	- else
# 		- print "Too bad, you ran out of tries. Maybe next time?"


puts "Welcome to the Hangman Game!"
puts "Player 1: Please enter a word"
target = gets.chomp
new_game = Game.new(target)

while !new_game.is_over
	guesses_left = new_game.guess_limit - new_game.guess_count
	puts "Player 2: Please enter your guess. You have #{guesses_left} guesses remaining."
	current_guess = gets.chomp
	if !new_game.check_word(current_guess)
		if new_game.check_within(current_guess)
			new_game.update_feedback(current_guess)
		end
		puts "Letters guessed so far: " + new_game.print_feedback
	end
	if new_game.guess_count == new_game.guess_limit
		new_game.is_over = true
	end
end

if new_game.win
	puts "Congrats! You won in #{new_game.guess_count} tries"
else
	puts "Too bad, you ran out of tries. Maybe next time?"
end





