require 'pry'
class Board
  attr_reader :print_board, :welcome, :columns, :rows

  def initialize(columns, rows)
    @print_board = "ABCDEF\n.......\n.......\n.......\n.......\n.......\n......."
    @welcome = "Welcome to CONNECT FOUR!"
    @columns = columns
    @rows = rows
  end

  def print_welcome
    "#{welcome}\n\n" + "#{print_board}"
  end

  def create_board
    board = {
      A: [".", ".", ".", ".", ".", "."],
      B: [".", ".", ".", ".", ".", "."],
      C: [".", ".", ".", ".", ".", "."],
      D: [".", ".", ".", ".", ".", "."],
      E: [".", ".", ".", ".", ".", "."],
      F: [".", ".", ".", ".", ".", "."],
      G: [".", ".", ".", ".", ".", "."]
    }
  end

  def place_piece
    p "Select a spot A-G"
    user_input = gets.chomp
    if user_input == :A

    end
    elsif user_input == :B
    end
    elsif user_input == :C
    end
  end
end


#
# def place_chip
#   p "Enter letter A through G"
#   board = Board.new(@columns, @rows)
#   board[0[0]] == "X"
#   board
# user_input = gets.chomp
# user_input.upcase
# if user_input == "A"
# elsif
#
# elsif
#board.new
#puts board.print_welcome
#put these in main menu file to display welcome and empty board

#board = Board.new
#board.create_board
#p board.create_board
