class HandAction
  attr_reader :computer_choice, :player_choice

  def initialize(player_choice:)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def who_wins
    puts computer_choice
    case player_choice 

    if player_choice == computer_choice
      puts 'Draw'
    end
    when 'Rock'
      case computer_choice
      when 'Paper'then computer_wins
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

  private 

  def player_wins
    puts 'Player wins'
  end

  def computer_wins
    puts 'Computer wins'
  end

  def computer_choice
    choice = rand(1..3)
    case choice
    when 1 then 'Rock'
    when 2 then "Paper"
    when 3 then "Scissors"
    end
  end
end