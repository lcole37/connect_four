require 'pry'
class Board
  attr_reader :print_board, :welcome, :columns, :rows

  def initialize
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
    p "Select column A - G"
    user_input = gets.chomp.upcase
      if letter != "A" || "B" || "C" || "D" || "E" || "F" || "G"
        p "That's not a column!"
    end
  end

  #def invalid input??

  def display_board
    board.new
    board.keys.join
    index = 5
    6.times do
      puts board[:A][index] + board[:B][index] + board[:C][index] + board[:D][index] + board[:E][index] + board[:F][index] + board[:G][index]
      index -= 1
    end
    puts display_board
  end


  def place_piece
    if board[:A]

    if user_input == :A
      if board[:A][5] == "."
          board[:A][5] = "X"
        elsif board[:A][5] != "."
          puts "Sorry! Invalid column selection"
        end
      end
    end
    if user_input == :B
      if board[:B][5] == "."
          board[:B][5] = "X"
        elsif board[:B][5] != "."
          puts "Sorry! Invalid column selection"
        end
      end
  end
  #hard code this per Alex
end


#below lines to run in runner file?
#board = Board.new
#board.create_board
#p board.create_board
