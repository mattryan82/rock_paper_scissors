class Game
  attr_accessor :player_score, :computer_score

  def initialize()
    @player_score = player_score
    @computer_score = computer_score
  end

  def player_wins
    player_score += 1
  end

  def computer_wins
    computer_score +=1  
  end

  def print_score
    puts "The current score is: Player - #{player_score} and Computer - #{}"
  end

end