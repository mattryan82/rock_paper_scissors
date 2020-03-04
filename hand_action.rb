require './game.rb'

class HandAction
  attr_reader :computer_choice, :player_choice, :game

  def initialize(player_choice:, game:)
    @player_choice = player_choice
    @computer_choice = computer_choice
     @game = game
  end

  def who_wins
    computer_choice = calc_computer_choice
    puts computer_choice
    
    if player_choice == computer_choice
     puts 'Draw'
    else
      case player_choice 
        when 'Rock'
          case computer_choice
            when 'Paper' then computer_wins
            when 'Scissors' then player_wins
          end
        when 'Scissors'
          case computer_choice
            when 'Paper' then player_wins
            when 'Rock' then computer_wins
          end
        when 'Paper'
          case computer_choice
            when 'Rock' then player_wins
            when 'Scissors' then computer_wins
          end
      end
    end
  end

  private 

  def player_wins
    puts 'Player wins'
    game.player_wins
  end

  def computer_wins
    puts 'Computer wins'
    game.computer_wins
  end

  def calc_computer_choice
    choice = rand(1..3)
    case choice
    when 1 then 'Rock'
    when 2 then "Paper"
    when 3 then "Scissors"
    end
  end
end