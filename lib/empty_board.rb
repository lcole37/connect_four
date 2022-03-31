class Board
  attr_reader :create_board, :welcome

  def initialize
    @create_board = "ABCDEF\n.......\n.......\n.......\n.......\n.......\n......."
    @welcome = "Welcome to CONNECT FOUR!"
  end

  def print_welcome
    "#{welcome}\n\n" + "#{create_board}"
  end

end
# board = Board.new
# puts board.print_welcome
