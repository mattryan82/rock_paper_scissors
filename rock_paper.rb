require './hand_action.rb'
require './game.rb'

puts "Welcome to Rock, Paper, Scissors. Please type your choice."
input = gets.strip
new_game = Game.new(player_score: 0,computer_score: 0)
hand_action = HandAction.new(player_choice: input, game: new_game)
hand_action.who_wins
new_game.print_score


# puts "Would you like to play again? (y/n)"
# input = gets.strip

# if input == "y"

# end