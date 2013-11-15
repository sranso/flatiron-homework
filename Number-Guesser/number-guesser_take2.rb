class Numberguesser

	puts "I'm thinking of a number between 1 and 100. Type your best guess!"
	number = gets.chomp.to_i

	while number != 5
		puts "nah, that's not it.. guess again."
		number2 = gets.chomp.to_i
		if number2 == 5
		 	puts "OMG ARE YOU PSYCHIC!?"
			break
		end
	end

	if number == 5
		puts "OMG ARE YOU PSYCHIC!?"
	end
	
end