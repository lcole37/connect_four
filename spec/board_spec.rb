require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  it "can create a board" do
    board = Board.new
    expect(board.create_board).to eq("ABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  it "can print a welcome message" do
    board = Board.new
    expect(board.welcome).to eq("Welcome to CONNECT FOUR!")
  end

  it "can display welcome message and empty board" do
    board = Board.new
    expect(board.print_welcome).to eq("Welcome to CONNECT FOUR!\n\nABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end
end
