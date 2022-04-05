require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a display board" do
    board = Board.new

    expect(board.print_board).to eq("ABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  it "can print a welcome message" do
    board = Board.new

    expect(board.welcome).to eq("Welcome to CONNECT FOUR!")
  end

  it "can display welcome message and empty board" do
    board = Board.new

    expect(board.print_welcome).to eq("Welcome to CONNECT FOUR!\n\nABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  it "can create a board" do
    board = Board.new

    expect(board.create_board).to eq({
      A: [".", ".", ".", ".", ".", "."],
      B: [".", ".", ".", ".", ".", "."],
      C: [".", ".", ".", ".", ".", "."],
      D: [".", ".", ".", ".", ".", "."],
      E: [".", ".", ".", ".", ".", "."],
      F: [".", ".", ".", ".", ".", "."],
      G: [".", ".", ".", ".", ".", "."]
    })
  end

  it "Can display wrong column message" do
    board = Board.new
    user_input = gets.chomp

    expect(board.get_user_input(user_input)).to eq("That's not a column!")
  end

  it "Can display a board" do
    board = Board.new
    board.create_board
    expected_hash = {:A=>[".", ".", ".", ".", ".", "."],
                     :B=>[".", ".", ".", ".", ".", "."],
                     :C=>[".", ".", ".", ".", ".", "."],
                     :D=>[".", ".", ".", ".", ".", "."],
                     :E=>[".", ".", ".", ".", ".", "."],
                     :F=>[".", ".", ".", ".", ".", "."],
                     :G=>[".", ".", ".", ".", ".", "."]
                    }

    expect(board.display_board).to eq(expected_hash)
  end

  it "Can place a piece" do
    board = Board.new
    board.create_board
    # user_input = "A"
    # user_input.to_sym
    board.place_piece(:B) #user_input)

    expect(board.display_board[:B][5]).to eq("X")
  end
end
