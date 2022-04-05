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
   user_input = gets.chomp
   user_input.downcase
    if user_input == "p"
      #play, repeat starts here
      #(user_turn)

      @board.place_piece(user_turn)
      @board.display_board
      #@board.check_win?
      #if true break
      #else continue
      @board.computer_turn
      @board.display_board
      # @board.check_win?
      #if true break
      #else repeat to line 45
    else
      main_menu
    end
  end



  def user_turn
    puts "Enter a column A-G"
    user_input = gets.chomp
    user_input.upcase
   #actually should this be p to play q to quit (this is on 21)
    if user_input != "A" || "B" || "C" || "D" || "E" || "F" || "G"
      p "That's not a column!"
    else
      # return user_input  for next, or combine with place piece
    end
  end
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
