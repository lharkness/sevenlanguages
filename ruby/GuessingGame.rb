#
# Simple Guessing game.  
#  
# Lacks error handling and user configuration options.
#
puts "I've chosen a number between 1 and 100.  Try to guess it"
numGuesses = 0
myNumber = rand(100) + 1
userGuess = -1
while userGuess != myNumber
    print "What is your guess? "
    userGuess = gets().to_i
    numGuesses += 1
    if userGuess == myNumber 
        puts "Correct!"
    elsif userGuess < myNumber
        puts "Too Low"
    elsif
        puts "Too High"
    end
    puts "Number of Guesses: %d" % [numGuesses] # This is an odd syntax
end
