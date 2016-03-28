require_relative 'game_flow'

class Play
  attr_reader :guess

  def initialize
    @guess
    self.class.run
  end

  def self.run
    puts "Welcome to MASTERMIND!"
    menu
  end

  def self.menu
    loop do
      print "Would you like to (p)lay, read the (i)nstructions, or (q)uit? \n >"
      player_choice = gets.chomp.downcase

       if player_choice == 'i'
         instructions
       elsif player_choice == 'p'
         play
      end
      break if player_choice == 'q'
    end
    exit
  end

  def self.instructions
    puts "A random sequence made up of the colors will be generated. Your job is to guess that sequence. If your guess is not totally correct then you will be told how many colors in your guess are correct as well as how many of those colors are in the correct position. Keep guessing until you discover the secret sequence!"
  end

  def self.play
    new_game = Game.new
  end

end

#
# print "I have generated a beginner sequence with four elements of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit to quit the game at any time. Please enter a guess >"
# @guess = gets.chomp.downcase
# puts @guess
# if @guess.length != 4
#   puts "WOAH there your sequence must be four characters long. Try again please :)"
# end
#p guess
