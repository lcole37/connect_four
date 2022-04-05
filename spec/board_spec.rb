require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  it "can print a welcome message" do
    board = Board.new

    expect(board.welcome).to eq("Welcome to CONNECT FOUR!")
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
