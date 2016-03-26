
puts "Welcome to MASTERMIND!"

print "Would you like to (p)lay, read the (i)nstructions, or (q)uit? \n >"
player_choice = gets.chomp.downcase

if player_choice == 'p'#put p or play
  #new instance of play class
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"

elsif player_choice == 'i' #put i or instructions
  puts "Not a problem, let me get those instructions for you!"
elsif player_choice == 'q' #put q or quit
  exit
else
  print "Please choose either to (p)lay, read the (i)nstructions, or (q)uit? \n >"
  player_choice = gets.chomp.downcase
end


#c or cheat

puts "Welcome to MASTERMIND!"

print "Would you like to (p)lay, read the (i)nstructions, or (q)uit? \n >"
player_choice = gets.chomp.downcase

if player_choice == 'p'#put p or play
  #new instance of play class
  puts "I have generated a beginner sequence with four elements made up of: (r)ed,
  (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
  What's your guess?"

elsif player_choice == 'i' #put i or instructions
  puts "Not a problem, let me get those instructions for you!"
elsif player_choice == 'q' #put q or quit
  exit
else
  print "Please choose either to (p)lay, read the (i)nstructions, or (q)uit? \n >"
  player_choice = gets.chomp.downcase
end


#c or cheat



#this class takes in the user guess

attr_reader :guess

def initialize
  @guess
end

def check_guess_length
  if @guess > 4
    puts "That guess is too long. Please put the correct number of guesses."
  elsif @guess < 4
    puts "That guess is too short. Please guess again"
  else
    #continue....
  end
end

def check_correct_positions
end

def check_correct_number_of_colors
end
