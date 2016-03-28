require_relative "generate"

class Game

  def initialize
    @guess = []
    @random_sequence
    @current_correct_positions

    generate_sequence
  end

  def generate_sequence
    new_sequence = Generate.new
    @random_sequence = new_sequence.random_sequence
    p "This is the #{@random_sequence}"
    puts "I have generated a beginner sequence with four elements of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit to quit the game at any time."
    start_game
  end

  def start_game
    # if valid_guess?
    #  var allCorrect = check_positions? && check colors?
    #  if allCorrect you win
    #  else continue and guess again
    # reguess
    loop do
      print "Please enter a guess? >"
      @guess = gets.chomp.downcase.chars
      if @guess == ['q']
        exit
      elsif validate_guess?
        puts "VALID LENGTH!"
        correct_guess = check_correct_positions?
        if correct_guess
          "You've won the game!!!"
          break
        end
      else
        #wrong_length_new_guess
      end
    end
  end

  def validate_guess?
    valid_length = false
    if @guess.length < 4
      puts "That guess is too short."
    elsif @guess.length > 4
      puts "That guess is too long."
    else
      valid_length = true
    end
    return valid_length
  end


  def check_correct_positions?
    all_correct = false
    @current_correct_positions = 0
    (0..3).each do |index|
      is_true =  @guess.values_at(index) == @random_sequence.values_at(index)
       if is_true == true
         @current_correct_positions += 1
       end
     end
    p "There are #{@current_correct_positions} colors in the correct positions."
    if @current_correct_positions == 4
      all_correct = true
    end
      all_correct
  end

  



end


#{}@guess.chars (should separate a string into an array of characters)
