
class Generate
  attr_reader :new_sequence

  def initialize
    @color_array = ['r', 'b', 'g', 'y']
    @new_sequence = []
    random_sequence
  end

  def random_sequence
    new_sequence = 4.times.map {@color_array.sample}
  end
end

#
# does_it_work = Generate.new
# puts "Hey #{does_it_work.random_sequence}"
