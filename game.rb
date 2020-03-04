class Game
  attr_accessor :player_score, :computer_score, :game_count
# Needed to add the @ symbol to variables throughout, why is this?????
  def initialize(player_score:, computer_score:)
    @player_score = player_score
    @computer_score = computer_score
    @game_count = 0
  end

  def inc_player
    @player_score += 1
    @game_count += 1
  end

  def inc_computer
    @computer_score += 1  
    @game_count += 1
  end

  def print_score
    puts "The current score is: Player - #{@player_score} and Computer - #{@computer_score}. Games Played (not including draws) - #{game_count}"
    best_of_3
  end

  def best_of_3
    if @game_count <= 3
      if @player_score == 2
        puts "Player wins best of 3"
      end
      if @computer_score == 2
        puts "Computer wins best of 3"
      end
    end

  end

  # def continue_best_of
  #   if (@game_count+1).odd?
  #     prints ""
  #   else

  #   end
  # end 

end
