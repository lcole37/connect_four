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
   # user_input.downcase
    if user_input == "p"
      #play, repeat starts here
      #(user_turn)

      user_turn = gets.chomp 
      @board.display_board
      #@board.check_win?
      #if true break
      #else continue
      @board.computer_turn
      @board.display_board
      # @board.check_win?
      #if true break
      #else repeat to line 45
    elsif user_input == "q"
      quit
    else
      main_menu
    end
  end



  def user_turn(user_input)
    puts "Enter a column A-G"
    user_input = gets.chomp
    user_input.upcase
    user_input.to_sym
    if user_input != :A || :B || :C || :D || :E || :F || :G
    #   p "That's not a column!" #loops back to select column
    if user_input == :A
      if @board[:A][5] == "."
        @board[:A][5] = "X"
      elsif @board[:A][4] == "."
        @board[:A][4] = "X"
      elsif @board[:A][3] == "."
        @board[:A][3] = "X"
      elsif @board[:A][2] == "."
        @board[:A][2] = "X"
      elsif @board[:A][1] == "."
        @board[:A][1] = "X"
      elsif @board[:A][0] == "."
        @board[:A][0] = "X"
      else
        puts "Sorry! Selected column is full"
        #prompt user to choose different column, loop back to user input
      end

    elsif user_input == :B
      if @board[:B][5] == "."
        @board[:B][5] = "X"
      elsif @board[:B][4] == "."
        @board[:B][4] = "X"
      elsif @board[:B][3] == "."
        @board[:B][3] = "X"
      elsif @board[:B][2] == "."
        @board[:B][2] = "X"
      elsif @board[:B][1] == "."
        @board[:B][1] = "X"
      elsif @board[:B][0] == "."
        @board[:B][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :C
      if @board[:C][5] == "."
        @board[:C][5] = "X"
      elsif @board[:C][4] == "."
        @board[:C][4] = "X"
      elsif @board[:C][3] == "."
        @board[:C][3] = "X"
      elsif @board[:C][2] == "."
        @board[:C][2] = "X"
      elsif @board[:C][1] == "."
        @board[:C][1] = "X"
      elsif @board[:C][0] == "."
        @board[:C][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :D
      if @board[:D][5] == "."
        @board[:D][5] = "X"
      elsif @board[:D][4] == "."
        @board[:D][4] = "X"
      elsif @board[:D][3] == "."
        @board[:D][3] = "X"
      elsif @board[:D][2] == "."
        @board[:D][2] = "X"
      elsif @board[:D][1] == "."
        @board[:D][1] = "X"
      elsif @board[:D][0] == "."
        @board[:D][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :E
      if @board[:E][5] == "."
        @board[:E][5] = "X"
      elsif @board[:E][4] == "."
        @board[:E][4] = "X"
      elsif @board[:E][3] == "."
        @board[:E][3] = "X"
      elsif @board[:E][2] == "."
        @board[:E][2] = "X"
      elsif @board[:E][1] == "."
        @board[:E][1] = "X"
      elsif @board[:E][0] == "."
        @board[:E][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :F
      if @board[:F][5] == "."
        @board[:F][5] = "X"
      elsif @board[:F][4] == "."
        @board[:F][4] = "X"
      elsif @board[:F][3] == "."
        @board[:F][3] = "X"
      elsif @board[:F][2] == "."
        @board[:F][2] = "X"
      elsif @board[:F][1] == "."
        @board[:F][1] = "X"
      elsif @board[:F][0] == "."
        @board[:F][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :G
      if @board[:G][5] == "."
        @board[:G][5] = "X"
      elsif @board[:G][4] == "."
        @board[:G][4] = "X"
      elsif @board[:G][3] == "."
        @board[:G][3] = "X"
      elsif @board[:G][2] == "."
        @board[:G][2] = "X"
      elsif @board[:G][1] == "."
        @board[:G][1] = "X"
      elsif @board[:G][0] == "."
        @board[:G][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end
    end
  end
end
end   #this doesn't work correctly, yet!


 #Invalid column selection method?

#   def get_user_input
#     p "Select column A - G"
#     user_input = gets.chomp
#     user_input.upcase
#     if user_input != "A" || "B" || "C" || "D" || "E" || "F" || "G"
#       p "That's not a column!"
#     end
#   end

#---------------------------------------------------


  def computer_turn
    #computer_selection random method, will need to loop back once column is full, do not display error message, way to remove symbol from array after column is full?

    if computer_selection == :A
      if @board[:A][5] == "."
        @board[:A][5] = "O"
      elsif @board[:A][4] == "."
        @board[:A][4] = "O"
      elsif @board[:A][3] == "."
        @board[:A][3] = "O"
      elsif @board[:A][2] == "."
        @board[:A][2] = "O"
      elsif @board[:A][1] == "."
        @board[:A][1] = "O"
      elsif @board[:A][0] == "."
        @board[:A][0] = "O"
      else
        #return to random selection loop
      end

    elsif computer_selection == :B
      if @board[:B][5] == "."
        @board[:B][5] = "O"
      elsif @board[:B][4] == "."
        @board[:B][4] = "O"
      elsif @board[:B][3] == "."
        @board[:B][3] = "O"
      elsif @board[:B][2] == "."
        @board[:B][2] = "O"
      elsif @board[:B][1] == "."
        @board[:B][1] = "O"
      elsif @board[:B][0] == "."
        @board[:B][0] = "O"
      else
        #return to random selection loop
      end

    elsif computer_selection == :C
      if @board[:C][5] == "."
        @board[:C][5] = "O"
      elsif @board[:C][4] == "."
        @board[:C][4] = "O"
      elsif @board[:C][3] == "."
        @board[:C][3] = "O"
      elsif @board[:C][2] == "."
        @board[:C][2] = "O"
      elsif @board[:C][1] == "."
        @board[:C][1] = "O"
      elsif @board[:C][0] == "."
        @board[:C][0] = "O"
      else
        #return to random selection loop
      end

    elsif computer_selection == :D
      if @board[:D][5] == "."
        @board[:D][5] = "O"
      elsif @board[:D][4] == "."
        @board[:D][4] = "O"
      elsif @board[:D][3] == "."
        @board[:D][3] = "O"
      elsif @board[:D][2] == "."
        @board[:D][2] = "O"
      elsif @board[:D][1] == "."
        @board[:D][1] = "O"
      elsif @board[:D][0] == "."
        @board[:D][0] = "O"
      else
        #return to random selection loop
      end

    elsif computer_selection == :E
      if @board[:E][5] == "."
        @board[:E][5] = "O"
      elsif @board[:E][4] == "."
        @board[:E][4] = "O"
      elsif @board[:E][3] == "."
        @board[:E][3] = "O"
      elsif @board[:E][2] == "."
        @board[:E][2] = "O"
      elsif @board[:E][1] == "."
        @board[:E][1] = "O"
      elsif @board[:E][0] == "."
        @board[:E][0] = "O"
      else
        #return to random selection loop
      end

    elsif computer_selection == :F
      if @board[:F][5] == "."
        @board[:F][5] = "O"
      elsif @board[:F][4] == "."
        @board[:F][4] = "O"
      elsif @board[:F][3] == "."
        @board[:F][3] = "O"
      elsif @board[:F][2] == "."
        @board[:F][2] = "O"
      elsif @board[:F][1] == "."
        @board[:F][1] = "O"
      elsif @board[:F][0] == "."
        @board[:F][0] = "O"
      else
        #return to random selection method
      end

    elsif computer_selection == :G
      if @board[:G][5] == "."
        @board[:G][5] = "O"
      elsif @board[:G][4] == "."
        @board[:G][4] = "O"
      elsif @board[:G][3] == "."
        @board[:G][3] = "O"
      elsif @board[:G][2] == "."
        @board[:G][2] = "O"
      elsif @board[:G][1] == "."
        @board[:G][1] = "O"
      elsif @board[:G][0] == "."
        @board[:G][0] = "O"
      else
        #return to random selection method UNLESS board full
      end
    end
  end
