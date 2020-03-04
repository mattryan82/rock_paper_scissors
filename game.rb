class Game
  attr_accessor :player_score, :computer_score
# Needed to add the @ symbol to variables throughout, why is this?????
  def initialize(player_score:, computer_score:)
    @player_score = player_score
    @computer_score = computer_score
  end

  def inc_player
    @player_score += 1
  end

  def inc_computer
    @computer_score += 1  
  end

  def print_score
    puts "The current score is: Player - #{@player_score} and Computer - #{@computer_score}"
  end

  def best_of
    

  end

end
