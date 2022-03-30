require 'pry'
class Board

  # attr_accessor :board
  attr_reader  :columns, :rows, :board

  def initialize(columns = 7, rows = 6)
    @columns = columns
    @rows = rows
    # @board = @create_board
  end

  def create_board
    board = []
    @columns.times do
      board << Array.new(@rows)
    end
    board
  end

end

board = Board.new
# board.create_board
# p board.create_board
