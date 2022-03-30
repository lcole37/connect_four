require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  it "can create a board" do
      board = Board.new
      expect(board.create_board).to eq([
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil]])
  end
  #     board.create_board(rows)
  #     expect(board.create_board).to eq(6)
  #     #new expect containing columns, rows, from .times do method??

end
