class Numberguesser

	puts "I'm thinking of a number between 1 and 100. Type your best guess!"
	number = gets.chomp.to_i
	if number == 5
		puts "OMG ARE YOU PSYCHIC!?"
	else
		puts "nah, that's not it..."
	end

end