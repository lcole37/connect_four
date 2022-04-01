class Board
  attr_reader :print_board, :welcome, :columns, :rows, :board

  def initialize(columns, rows)
    @print_board = "ABCDEF\n.......\n.......\n.......\n.......\n.......\n......."
    @welcome = "Welcome to CONNECT FOUR!"
    @columns = columns
    @rows = rows
    @board = board
  end

  def print_welcome
    "#{welcome}\n\n" + "#{print_board}"
  end

  def create_board
    board = []
    @columns.times do
      board << Array.new(@rows)
    end
    board
  end
end

#board.new
#puts board.print_welcome
#put these in main menu file to display welcome and empty board

#board = Board.new
#board.create_board
#p board.create_board
