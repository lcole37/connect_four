require 'rspec'
require './lib/board'
require './lib/game'
#to go along with user input method
# xit "Can display wrong column message" do
#   board = Board.new
#   user_input = gets.chomp
#
#   expect(board.get_user_input(user_input)).to eq("That's not a column!")
# end

RSpec.describe Game do
  it "exists" do
    game = Game.new

    expect(game).to be_an_instance_of(Game)
  end

  it "can initialize a playable gameboard" do
    game = Game.new
    expected_hash = {
        A: [".", ".", ".", ".", ".", "."],
        B: [".", ".", ".", ".", ".", "."],
        C: [".", ".", ".", ".", ".", "."],
        D: [".", ".", ".", ".", ".", "."],
        E: [".", ".", ".", ".", ".", "."],
        F: [".", ".", ".", ".", ".", "."],
        G: [".", ".", ".", ".", ".", "."]
      }

    expect(game.gameboard).to eq(expected_hash)

  end








end
