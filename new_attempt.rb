color_array = ['r', 'b', 'g', 'y']

class Generate
  attr_reader :new_sequence

  def initialize
    @color_array = ['r', 'b', 'g', 'y']
    puts @color_array
    @new_sequence = []
    self.class.random_sequence
  end

  def self.random_sequence
    puts "What's up?"
    puts @color_array
    # new_sequence = @color_array.sample(4)
  end
end


does_it_work = Generate.new
puts "Hey #{does_it_work.new_sequence}"
