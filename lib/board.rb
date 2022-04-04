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
    @board = {
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

  def display_board
    # board.new
    puts @board.keys.join
    index = 5
    6.times do
      puts @board[:A][index] + @board[:B][index] + @board[:C][index] + @board[:D][index] + @board[:E][index] + @board[:F][index] + @board[:G][index]
      index -= 1
    end
    # puts display_board
  end


  def place_piece(letter)
    # array = [:A, :B, :C, :D, :E, :F, :G]
    # VVV use this later to iterate through VVV



    user_input.to_sym

    if user_input == :A
      if board[:A][5] == "."
        board[:A][5] = "X"
      elsif board[:A][4] == "."
        board[:A][4] = "X"
      elsif board[:A][3] == "."
        board[:A][3] = "X"
      elsif board[:A][2] == "."
        board[:A][2] = "X"
      elsif board[:A][1] == "."
        board[:A][1] = "X"
      elsif board[:A][0] == "."
        board[:A][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :B
      if board[:B][5] == "."
        board[:B][5] = "X"
      elsif board[:B][4] == "."
        board[:B][4] = "X"
      elsif board[:B][3] == "."
        board[:B][3] = "X"
      elsif board[:B][2] == "."
        board[:B][2] = "X"
      elsif board[:B][1] == "."
        board[:B][1] = "X"
      elsif board[:B][0] == "."
        board[:B][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :C
      if board[:C][5] == "."
        board[:C][5] = "X"
      elsif board[:C][4] == "."
        board[:C][4] = "X"
      elsif board[:C][3] == "."
        board[:C][3] = "X"
      elsif board[:C][2] == "."
        board[:C][2] = "X"
      elsif board[:C][1] == "."
        board[:C][1] = "X"
      elsif board[:C][0] == "."
        board[:C][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :D
      if board[:D][5] == "."
        board[:D][5] = "X"
      elsif board[:D][4] == "."
        board[:D][4] = "X"
      elsif board[:D][3] == "."
        board[:D][3] = "X"
      elsif board[:D][2] == "."
        board[:D][2] = "X"
      elsif board[:D][1] == "."
        board[:D][1] = "X"
      elsif board[:D][0] == "."
        board[:D][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :E
      if board[:E][5] == "."
        board[:E][5] = "X"
      elsif board[:E][4] == "."
        board[:E][4] = "X"
      elsif board[:E][3] == "."
        board[:E][3] = "X"
      elsif board[:E][2] == "."
        board[:E][2] = "X"
      elsif board[:E][1] == "."
        board[:E][1] = "X"
      elsif board[:E][0] == "."
        board[:E][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :F
      if board[:F][5] == "."
        board[:F][5] = "X"
      elsif board[:F][4] == "."
        board[:F][4] = "X"
      elsif board[:F][3] == "."
        board[:F][3] = "X"
      elsif board[:F][2] == "."
        board[:F][2] = "X"
      elsif board[:F][1] == "."
        board[:F][1] = "X"
      elsif board[:F][0] == "."
        board[:F][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end

    elsif user_input == :G
      if board[:G][5] == "."
        board[:G][5] = "X"
      elsif board[:G][4] == "."
        board[:G][4] = "X"
      elsif board[:G][3] == "."
        board[:G][3] = "X"
      elsif board[:G][2] == "."
        board[:G][2] = "X"
      elsif board[:G][1] == "."
        board[:G][1] = "X"
      elsif board[:G][0] == "."
        board[:G][0] = "X"
      else
        puts "Sorry! Selected column is full"
      end
    end
  end
end
