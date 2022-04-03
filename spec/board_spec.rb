require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  it "can create a empty board" do
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

  it "Can get user input" do
    board = Board.new

    expect(board.get_user_input("H")).to eq("That's not a column!")
  end

  it "Can display keys of a board" do
    board = Board.new
    board.create_board
    
    expect(board.display_board).to eq("ABCDEFG")
  end

  # xit "Can display board" do
  #   board = Board.new
  #   board = {
  #     A: [".", ".", ".", ".", ".", "."],
  #     B: [".", ".", ".", ".", ".", "."],
  #     C: [".", ".", ".", ".", ".", "."],
  #     D: [".", ".", ".", ".", ".", "."],
  #     E: [".", ".", ".", ".", ".", "."],
  #     F: [".", ".", ".", ".", ".", "."],
  #     G: [".", ".", ".", ".", ".", "."]
  #   }
  #
  #   expect(board.keys.join).to eq("ABCDEFG")
  #   expect(board.display_board).to eq("ABCDEF
  #                                     .......
  #                                     .......
  #                                     .......
  #                                     .......
  #                                     .......
  #                                     .......")
  #
  # end

  it "Can place a piece" do
    board = Board.new
    user_input = :A
    board = {
      A: [".", ".", ".", ".", ".", "X"],
      B: [".", ".", ".", ".", ".", "."],
      C: [".", ".", ".", ".", ".", "."],
      D: [".", ".", ".", ".", ".", "."],
      E: [".", ".", ".", ".", ".", "."],
      F: [".", ".", ".", ".", ".", "."],
      G: [".", ".", ".", ".", ".", "."]
    }
    #expect(board.place_piece).to eq(:A)
    expect(board[:A][5]).to eq("X")
  end

    it "Can place a piece in a different column" do
      board = Board.new
      user_input = :B
      board = {
        A: [".", ".", ".", ".", ".", "."],
        B: [".", ".", ".", ".", ".", "X"],
        C: [".", ".", ".", ".", ".", "."],
        D: [".", ".", ".", ".", ".", "."],
        E: [".", ".", ".", ".", ".", "."],
        F: [".", ".", ".", ".", ".", "."],
        G: [".", ".", ".", ".", ".", "."]
      }
      expect(board[:B][5]).to eq("X")
    end


end
