class Board
  attr_reader :print_board, :welcome, :rows, :columns, :board

  def initialize(columns, rows)
    @print_board = "ABCDEF\n.......\n.......\n.......\n.......\n.......\n......."
    @welcome = "Welcome to CONNECT FOUR!\n\n" + "ABCDEF\n.......\n.......\n.......\n.......\n.......\n......."
    @columns = columns
    @rows = rows
  end

  def print_welcome
    "#{welcome}\n\n" + "#{print_board}"


  def create_board
    board = []
    @columns.times do
      board << Array.new(@rows)
    end
    board
  end
end
#
# end
#
# board = Board.new
# # board.create_board
# # p board.create_board

# board = Board.new
# puts board.print_welcome

#Lucas' logic
# require 'pry'
# class Board
#
#   # attr_accessor :board
#   attr_reader  :columns, :rows, :board
