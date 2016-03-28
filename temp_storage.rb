
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



#initialize some variables
color_array = ['r', 'b', 'g', 'y', 'w', 'o']
#added six colors for extension to be considered later on

class Generate

  def initialize(colors)
    @colors = colors
    @random = []
  end

  def generate_num
    rand(@colors)
  end

  def difficulty(number = 4)
    @random = []
    number.times do
      $random << generate_num
    end
     $random

  end

end

BEGINNER_GAME = Generate.new(4)
INTERMEDIATE_GAME = Generate.new(5)
ADVANCED_GAME = Generate.new(6)

#difficulty (NUMBER OF PEGS) can be either four, six, or eight
beginner = 4
intermediate = 6
advanced = 8

puts "I want to generate a random list of four numbers"
puts BEGINNER_GAME.difficulty(beginner)

# puts "Now let's do the intermediate"
# puts INTERMEDIATE_GAME.difficulty(intermediate)
#
# puts "But we can't forget about advance..."
# puts ADVANCED_GAME.difficulty(advanced)

#puts "This is the #{$sequence}"

 # rand_array.map do |num|
 #   $sequence = $color_array[num]
 # end
sequence = []
$random.map do |num|
  sequence << color_array[num]
end

puts "This is the #{sequence}"






#initialize some variables
color_array = ['r', 'b', 'g', 'y', 'w', 'o']
#added six colors for extension to be considered later on

class Generate

  def initialize(colors)
    @colors = colors
    @random = []
    # @sequence = []
    # @color_array = ['r', 'b', 'g', 'y', 'w', 'o']
  end

  def generate_num
    rand(@colors)
  end

  def difficulty(number = 4)
    @random = []
    number.times do
      @random << generate_num
    end
     @random
  end

  # def num_to_letters
  #   @random.map do |num|
  #     @sequence << @color_array[num]
  #   end
  #   @sequence
  # end
  #
  # def new_sequence
  #   puts "This is the #{@sequence}"
  # end

end

# BEGINNER_GAME = Generate.new(4)
# # INTERMEDIATE_GAME = Generate.new(5)
# # ADVANCED_GAME = Generate.new(6)
# #
# # #difficulty (NUMBER OF PEGS) can be either four, six, or eight
# beginner = 4
# intermediate = 6
# advanced = 8

# puts "I want to generate a random list of four numbers"
# new_sequence = BEGINNER_GAME.difficulty(beginner)


# puts new_sequence
#
# # puts "Now let's do the intermediate"
# puts INTERMEDIATE_GAME.difficulty(intermediate)
#
# puts "But we can't forget about advance..."
# puts ADVANCED_GAME.difficulty(advanced)

#puts "This is the #{$sequence}"

 # rand_array.map do |num|
 #   $sequence = $color_array[num]
 # end
# sequence = []
# $random.map do |num|
#   sequence << color_array[num]
# end
#
# puts "This is the #{sequence}"
