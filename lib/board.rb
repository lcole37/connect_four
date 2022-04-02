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

  def get_user_input(letter)
    p "Select a column A - G"
    user_input = gets.chomp.upcase
    if letter == :A
      p "You selected A"
    end
  end


  def place_piece
    if board[:A]

    if user_input == :A
      if board[:A][-1] == "."
          board[:A][-1] == "X"
        elsif board[:A][-1] != "."
          puts "Sorry! Invalid column selection"
        end
      end
    end
  end
end


#below lines to run in runner file?
#board = Board.new
#board.create_board
#p board.create_board
