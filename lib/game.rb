require 'pry'
require './lib/board'
#notes section
# call welcome + print empty board
# call board (Board.new + board.create_board, board display board)
# start a game (Enter p to play, q to quit -- if q, loop back to main menu/runner -- if p, go on to place piece)
# (get user input THIS IS WHERE THIS ACTUALLY HAPPENS
# user_input = gets.chomp)
#
# use user input to call method to place piece
# display board after piece is placed
#
# after user turn, then copy paste adjust logic for computer turn(randomize choosing of column)
#
# repeat (loop)

class Game
  attr_reader :gameboard

  def initialize
    @gameboard = gameboard
  end

 def gameboard
   board = Board.new
   board.create_board
   board.display_board
 end

 def start
   board = Board.new
   board.print_welcome
   get_user_input
 end

  def get_user_input
    p "Select column A - G"
    user_input = gets.chomp
    user_input.upcase
    if user_input != "A" || "B" || "C" || "D" || "E" || "F" || "G"
    p "That's not a column!"
  end
end
