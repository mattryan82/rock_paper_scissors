require './hand_action.rb'
require './game.rb'

$new_game = Game.new(player_score: 0,computer_score: 0)

def run_game
  puts "Welcome to Rock, Paper, Scissors. Please type your choice."
  input = gets.strip
  hand_action = HandAction.new(player_choice: input, game: $new_game)
  hand_action.who_wins
  $new_game.print_score
end

run_game


loop do
  puts "Would you like to play again? (y or any other key to quit)"
  option = gets.strip

  if option == "y"
    run_game
  else 
    puts "Thanks for playing."
    break
  end
end