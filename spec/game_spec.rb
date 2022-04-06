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

#don't think we need this, it's tested in board
  xit "can initialize a playable gameboard" do
    game = Game.new
    board = Board.new
    @columns = {
        A: [".", ".", ".", ".", ".", "."],
        B: [".", ".", ".", ".", ".", "."],
        C: [".", ".", ".", ".", ".", "."],
        D: [".", ".", ".", ".", ".", "."],
        E: [".", ".", ".", ".", ".", "."],
        F: [".", ".", ".", ".", ".", "."],
        G: [".", ".", ".", ".", ".", "."]
      }

    expect(game.board).to eq(@columns)

  end

  it "can print a welcome message" do
    game = Game.new
    board = Board.new

    expect(game.welcome).to eq("Welcome to CONNECT FOUR! Enter p to play, q to quit!")
  end

  xit "check for valid input" do
    game = Game.new
    board = Board.new

    expect().to eq()
  end

  it "Can place a piece" do
    game = Game.new
    board = Board.new
    user_input = "B"
    user_input.to_sym
    game.user_turn(:B)

    expect(game[:B][5]).to eq("X")
  end

end
