class Board
  attr_reader :columns

  def initialize
    @columns = {
        A: [".", ".", ".", ".", ".", "."],
        B: [".", ".", ".", ".", ".", "."],
        C: [".", ".", ".", ".", ".", "."],
        D: [".", ".", ".", ".", ".", "."],
        E: [".", ".", ".", ".", ".", "."],
        F: [".", ".", ".", ".", ".", "."],
        G: [".", ".", ".", ".", ".", "."]
      }
  end

  def display_board
    puts @columns.keys.join
    index = 0
    6.times do
      puts @columns[:A][index] + @columns[:B][index] + @columns[:C][index] + @columns[:D][index] + @columns[:E][index] + @columns[:F][index] + @columns[:G][index]
      index += 1
    end
    @columns
  end
end
