require 'pry'
require './lib/board'

#notes section
call welcome + print empty board
call board (Board.new + board.create_board, board display board)
start a game (Enter p to play, q to quit -- if q, loop back to main menu/runner -- if p, go on to place piece)
(get user input THIS IS WHERE THIS ACTUALLY HAPPENS
user_input = gets.chomp)

use user input to call method to place piece
display board after piece is placed

after user turn, then copy paste adjust logic for computer turn(randomize choosing of column)

repeat (loop)



# def get_user_input(letter) #this method can live in game file we think!
#   p "Select column A - G"
#   letter.upcase
#   if letter != "A" || "B" || "C" || "D" || "E" || "F" || "G"
#     p "That's not a column!"
#   end
