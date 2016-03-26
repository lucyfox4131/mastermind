class Play

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



end
