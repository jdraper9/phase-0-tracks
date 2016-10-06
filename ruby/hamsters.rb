# hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
puts 'What is the hamster\'s name?'
name = gets.chomp
# volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
puts 'How loud is the hamster from 1 to 10'
volume = gets.to_i
# fur color
puts 'What color is the hamster?'
color = gets.chomp
# whether the hamster is a good candidate for adoption
puts 'Is this hamster a good candidate for adoption?'
adopt = gets.chomp.downcase
if adopt == 'yes'
	adopt = true
else
	adopt = false
end
# estimated age
puts 'How old is this hamster?'
age = gets.to_i
if age.nil?
	age = nil
end
puts "The hamster\'s name is #{name}, it rates #{volume} out of 10 in loudness, it is #{color}"
puts "It is #{adopt} that #{name} is a good candidate for adoption"
puts "#{name} is #{age} years old"