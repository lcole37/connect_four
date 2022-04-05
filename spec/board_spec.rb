require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a board" do
    board = Board.new

    expect(board.columns).to eq({
      A: [".", ".", ".", ".", ".", "."],
      B: [".", ".", ".", ".", ".", "."],
      C: [".", ".", ".", ".", ".", "."],
      D: [".", ".", ".", ".", ".", "."],
      E: [".", ".", ".", ".", ".", "."],
      F: [".", ".", ".", ".", ".", "."],
      G: [".", ".", ".", ".", ".", "."]
    })
  end

  #this test is not passing as written, and I think if we write a player class we will be moving it there.  Thoughts?
  it "Can place a piece" do
    board = Board.new
    # board.columns
    # user_input = "A"
    # user_input.to_sym
    board.place_piece(:B) #user_input

    expect(@board[:B][5]).to eq("X")
  end
end
