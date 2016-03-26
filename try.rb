#initialize some variables
color_array = ['r', 'b', 'g', 'y', 'w', 'o']
#added six colors for extension to be considered later on

class Generate

  def initialize(colors)
    @colors = colors
  end

  def generate_num
    rand(@colors)
  end

  def difficulty(number = 4)
    $random = []
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
