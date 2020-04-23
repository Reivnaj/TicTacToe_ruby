require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)

require 'app/player.rb'
require 'app/game.rb'
require 'app/board.rb'
require 'app/board_case.rb'

def start_game
	puts 'Bienvenue dans le meilleur jeu de Morpion du MONDE !'
	puts 'Joueur 1, quel est ton prénom ?'
	print '> '
	player_1_name = gets.chomp
	puts 'Joueur 2, quel est ton prénom ?'
	print '> '
	player_2_name = gets.chomp
	my_game = Game.new(player_1_name, player_2_name)
end

def perform
	my_game = start_game
	while my_game.is_still_going?
	  my_game.play_turn
	  my_game.board_state
	  user_choice = gets.chomp
	  my_game.update_board(user_choice)
	  my_game.change_turns
	end

	my_game.my_game_end
end
perform