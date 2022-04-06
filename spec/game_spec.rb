require 'rspec'
require './lib/board'
require './lib/game'

RSpec.describe Game do
  it "exists" do
    game = Game.new

    expect(game).to be_an_instance_of(Game)
  end

  it "can print a welcome message" do
    game = Game.new
    board = Board.new

    expect(game.welcome).to eq("Welcome to CONNECT FOUR! Enter p to play, q to quit!")
  end

  it "Can place a piece" do
    game = Game.new
    board = Board.new
    user_input = "B"
    user_input.to_sym
    game.user_turn(:B)

    expect(board[:B][5]).to eq("X")
  end
end
