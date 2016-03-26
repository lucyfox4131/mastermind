# guess = []
# $sequence = ['r', 'y', 'y', 'b']
# count = 0
#
# print "What's your guess? >"
# guess = gets.chomp.downcase.split(//)
#
#
# def check_correct_number_of_colors(array)
#   count = 0
#   array.each do |element|
#     $sequence.include?(element)
#       count +=1 if true
#
#   end
#   # guess.each do |color|
#   #   puts sequence.frequency(color)
#   #     count +=1 if true
#   #   end
#   puts count
# end
#
#
# # p guess
# # p count
#
# p check_correct_number_of_colors(guess)
#
# #a.each_index for arrays could be helpful at some point
#
# #at(index)
#
# #.count for each letter within both sequence and guess and compare?


#holy shit this works......god damn
#so this checks how many are exactly correct
guess = ['r', 'r', 'y', 'r']
sequence = ['r', 'y', 'b', 'r']
beginner = (0..3)

def check_correct_number_of_colors(array1, array2,difficulty)
  #difficulty --> beginner --> four pegs
  counter = 0
  difficulty.each do |index|
    is_true =  array1.values_at(index) == array2.values_at(index)
     if is_true == true
       counter += 1
     end
  end
  counter
end

puts check_correct_number_of_colors(guess, sequence, beginner)

#what I have to do is check exactly how many are correct colors, but index doesn't matter
