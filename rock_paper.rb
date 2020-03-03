require './hand_action.rb'

puts "Welcome to Rock, Paper, Scissors. Please type your choice."
input = gets.strip
hand_action = HandAction.new(player_choice: input)
hand_action.who_wins
