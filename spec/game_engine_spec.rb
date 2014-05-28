require "game_engine"
require "human_player"
require "computer"
require 'board'
require 'game_engine'

describe GameEngine do
  let(:ui) {ConsoleUI.new}
  let(:board) {Board.new}
  let(:game) {GameEngine.new(ui, board)}

  it "should check if game is over if board is full" do
    game_board = ["x", "x", "x",
                  nil, "o", nil,
                  nil, "o", nil]
    game.game_over(game_board).should == true
  end

  it "should check if game is over if tie game" do
    game_board = ["x", "o", "x",
                  "x", "o", "o",
                  "o", "x", "x"]
    game.game_over(game_board).should == true
  end

  it "should check if game is over if there is a winner" do
    game_board = ["x", "x", "x",
                  nil, nil, nil,
                  nil, nil, nil]
    game.game_over(game_board).should == true
  end

  it "should check if game is still in play with an empty board" do
    game_board = [nil, nil, nil,
                  nil, nil, nil,
                  nil, nil, nil]
    game.game_over(game_board).should == false
  end

  it "should take turns until game is over" do
    pending("I don't know how to test this yet!")
  end

  it "should set current player to be x when board is empty" do
    game_board =  [nil, nil, nil,
                   nil, nil, nil,
                   nil, nil, nil]
    game.current_player(game_board).should == @player1
  end

  it "should set current player to be o when one turn has been played" do
    game_board = ["x", nil, nil,
                  nil, nil, nil,
                  nil, nil, nil]
    game.current_player(game_board).should == @player2
  end

  it "should set current player to be x when one turn has been played" do
    game_board = ["x", "o", nil,
                  nil, nil, nil,
                  nil, nil, nil]
    game.current_player(game_board).should == @player1
  end

  it "should turn a nil spot into a blank space" do
    game.display_spots(nil).should == " "
  end

  it "should present a spot with an x token as x" do
    game.display_spots("x").should == "x"
  end

  it "should present a spot with an o token as o" do
    game.display_spots("o").should == "o"
  end

  it "should return a new line if index is divisible by three" do
    game.make_rows(3).should == "\n"
  end

  it "should return a pipe if index is not divisible by three" do
    idx = 1
    game.make_rows(idx).should == "|"
  end

  it "should format an empty board as a string with 9 blank spaces and pipes/newlines" do
    game_board = Array.new(9)
    game.display_board(game_board).should == " | | \n | | \n | | \n"
  end

  it "should make two human players if number of players is 2" do
    allow(ui).to receive(:receive_message) { 2 }
    game.get_options
    game.instance_variable_get("@player2").class.should == HumanPlayer
  end

  it "should make one ai player if number of players is 1" do
    allow(ui).to receive(:receive_message) { 1 }
    game.get_options
    game.instance_variable_get("@player2").class.should == SimpleAI
  end

end