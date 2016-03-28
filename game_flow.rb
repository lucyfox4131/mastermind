require_relative "generate"

class Game

  def initialize
    @guess = ""
    @new_sequence
    @random_sequence

    self.class.generate_sequence
  end

  def self.generate_sequence
    @new_sequence = Generate.new
    @random_sequence = @new_sequence.random_sequence
    p "This is the #{@random_sequence}"
    get_guess
  end

  def self.get_guess
    print "I have generated a beginner sequence with four elements of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit to quit the game at any time. Please enter a guess >"
    @guess = gets.chomp.downcase.chars
    if @guess == 'q'
      exit
    else
    check_guess_length
    end
  end

  def self.check_guess_length
    if @guess.length < 4
      until @guess.length == 4 #|| @guess == 'q'
      puts "That guess is to short. Your guess must be 4 characters long. Please try again. >"
      @guess = gets.chomp.downcase.chars
      #if @guess == 'q' then exit end
      end
    elsif @guess.length > 4
      until @guess.length == 4
      puts "That guess is to long. Your guess must be 4 characters long. Please try again. >"
      @guess = gets.chomp.downcase.chars
      end
    end
    puts "Your guess is #{@guess}"
    # check_correct_positions(@guess, @sequence, @beginner)
  end

  # def self.check_correct_positions(array1, array2, difficulty)
  #   difficulty.each do |index|
  #     is_true =  array1.values_at(index) == array2.values_at(index)
  #      if is_true == true
  #        @counter += 1
  #      end
  #    end
  #   p "There are #{counter} colors in the correct positions."
  #   end



end


#{}@guess.chars (should separate a string into an array of characters)
