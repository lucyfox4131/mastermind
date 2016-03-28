require_relative "generate"

class Game

  def initialize
    @guess = []
    @new_sequence
    @random_sequence

    generate_sequence
  end

  def generate_sequence
    @new_sequence = Generate.new
    @random_sequence = @new_sequence.random_sequence
    p "This is the #{@random_sequence}"
    get_guess
  end

  def get_guess
    print "I have generated a beginner sequence with four elements of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit to quit the game at any time. Please enter a guess >"
    @guess = gets.chomp.downcase.chars
    if @guess == 'q'
      exit
    else
    invalid_length_reguess
    puts @guess
    end
  end

  def invalid_length_reguess
    if @guess.length < 4
      puts "That guess is too short."
      wrong_length_new_guess
    elsif @guess.length > 4
      puts "That guess is too long."
      wrong_length_new_guess
    end
    puts "Your guess is #{@guess}"
    # check_correct_positions(@guess, @sequence, @beginner)
  end

  def wrong_length_new_guess
    until @guess.length == 4 or @guess == ['q']
      puts "Your guess must be 4 characters long. Please try again. >"
      @guess = gets.chomp.downcase.chars
      if @guess == ['q'] then exit end
    end
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
