require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new(7, 6)
    expect(board).to be_an_instance_of(Board)
  end

  # it "can print welcome board" do
  #   board = Board.new(7, 6)
  #   expect(board.print_board).to eq("ABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  # end

  it "can print a welcome message" do
    board = Board.new(7, 6)
    expect(board.print_welcome).to eq("Welcome to CONNECT FOUR!\n\n ABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  end

  # it "can display welcome message and empty board" do
  #   board = Board.new(7, 6)
  #   expect(board.print_welcome).to eq("Welcome to CONNECT FOUR!\n\nABCDEF\n.......\n.......\n.......\n.......\n.......\n.......")
  # end
end















#Lucas' logic below
# require 'rspec'
# require './lib/board'
#
# RSpec.describe Board do
#   it "exists" do
#     board = Board.new
#     expect(board).to be_an_instance_of(Board)
#   end
#
#   it "can create a board" do
#       board = Board.new
#       expect(board.create_board).to eq([
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil],
#         [nil, nil, nil, nil, nil, nil]])
#   end
#   #     board.create_board(rows)
#   #     expect(board.create_board).to eq(6)
#   #     #new expect containing columns, rows, from .times do method??
#
# end
