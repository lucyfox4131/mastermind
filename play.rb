class Play

  def initialize
    puts "Yay something works!"
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

      if player_choice = 'i'

      break if player_choice == 'q'
    end
    exit
  end

  

end
