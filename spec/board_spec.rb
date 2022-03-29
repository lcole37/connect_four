require 'rspec'
require './lib/board'

RSpec.describe Board do
  it "exists" do
    board = Board.new(rows, columns)
    expect(board).to be_an_instance_of(Board)
  end

  it "has rows and columns" do
  end









end
