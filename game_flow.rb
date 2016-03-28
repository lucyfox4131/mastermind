require 'time'
require_relative "generate"

class Game

  def initialize
    @guess = []
    @random_sequence
    @current_correct_positions
    @counter_colors

    generate_sequence
  end

  def generate_sequence
    new_sequence = Generate.new
    @random_sequence = new_sequence.random_sequence
    #p "This is the #{@random_sequence}"
    puts "I have generated a beginner sequence with four elements of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit to quit the game at any time, or (c)heat to see the sequence."
    start_game
  end

  def start_game
    t1 = Time.new
    guess_number = 0
    loop do
      print "Please enter a guess? >"
      @guess = gets.chomp.downcase.chars
      if @guess == ['q']
        exit
      elsif @guess == ['c']
        puts "You cheater! Here's the sequence #{@random_sequence}"

      elsif validate_guess?
        guess_number += 1
        correct_colors
        correct_guess = check_correct_positions?
        puts "#{@guess} has #{@counter_colors} of the correct elements with #{@current_correct_positions} in the correct positions. You've taken #{guess_number} guess."
        if correct_guess
          t2 = Time.new
          total_time = t2 - t1
          puts "Congratulations! You guessed the sequence #{@guess} in #{total_time} seconds."
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

  #how many correct colors in guess

  #takes an array of colors and returns hash with colors counted
  def hash_array_colors(array)
    array_to_hash = Hash.new(0)
    #iterate over both arrays
    array.each do |color|
      array_to_hash[color] += 1
    end
    return array_to_hash
  end

  def correct_colors
    sequence_color_hash = hash_array_colors(@random_sequence)
    guess_color_hash = hash_array_colors(@guess)
    counter_colors = 0

    guess_color_hash.each_key do |color|

      guess_color_count = guess_color_hash[color]
      sequence_color_count = sequence_color_hash[color]

      if sequence_color_hash[color]
        if sequence_color_count < guess_color_count
          counter_colors += sequence_color_count
        else
          counter_colors = counter_colors + guess_color_hash[color]
        end
      end
    end
    @counter_colors = counter_colors
  end
end
