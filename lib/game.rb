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
  attr_reader :welcome, :board

  def initialize
      @welcome = "Welcome to CONNECT FOUR! Enter p to play, q to quit!"
      @board = Board.new
      # @player = Player.new(@board)
      # @computer = Computer.new(@board)
  end

 def main_menu
   puts @welcome
   @board.display_board

 end
  def quit
    puts "Bummer for you!"
    main_menu
  end


 def start
   main_menu
   user_input = gets.chomp.downcase
    if user_input == "p"
      turn #player.place_piece
    else
      main_menu
    end
 end



 #   def method here if they choose to play
 #   puts "Enter a column A-G"
 #   user_input = gets.chomp.upcase
 #   #actually should this be p to play q to quit
 #   if user_input != "A" || "B" || "C" || "D" || "E" || "F" || "G"
 #     p "That's not a column!"
 #   end
 # end
   #this doesn't work correctly, yet!
 end

 #Invalid column selection method?

#   def get_user_input
#     p "Select column A - G"
#     user_input = gets.chomp
#     user_input.upcase
#     if user_input != "A" || "B" || "C" || "D" || "E" || "F" || "G"
#       p "That's not a column!"
#     end
#   end
