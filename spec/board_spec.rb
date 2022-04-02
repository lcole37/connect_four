require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new(7, 6)
    expect(board).to be_an_instance_of(Board)
  end

  it "can create a empty board" do
    board = Board.new(7, 6)
    expect(board.print_board).to eq("ABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  it "can print a welcome message" do
    board = Board.new(7, 6)
    expect(board.welcome).to eq("Welcome to CONNECT FOUR!")
  end

  it "can display welcome message and empty board" do
    board = Board.new(7, 6)
    expect(board.print_welcome).to eq("Welcome to CONNECT FOUR!\n\nABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  it "can create a board" do
    board = Board.new(7, 6)
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

  it "Can get user input" do
    board = Board.new(7, 6)
    #board.create_board
    expect(board.get_user_input(:A)).to eq("You selected A")
  end

  it "Can place a piece" do
    board = Board.new(7, 6)
    board = {
      A: [".", ".", ".", ".", ".", "X"],
      B: [".", ".", ".", ".", ".", "."],
      C: [".", ".", ".", ".", ".", "."],
      D: [".", ".", ".", ".", ".", "."],
      E: [".", ".", ".", ".", ".", "."],
      F: [".", ".", ".", ".", ".", "."],
      G: [".", ".", ".", ".", ".", "."]
    }

    expect(board[:A][-1]).to eq("X")
  end


end
