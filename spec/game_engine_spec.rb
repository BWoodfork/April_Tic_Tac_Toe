require "game_engine"
require "human_player"
require "computer"

describe GameEngine do
  let(:game) {GameEngine.new}
  let(:ui) {ConsoleUI.new}
  let(:player1) {HumanPlayer.new("x", ui)}
  let(:player2) {HumanPlayer.new("o", ui)}

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

  xit "should take turns until game is over" do
    game_board = ["x", nil, "o",
                  "x", "o", nil,
                  nil, nil, nil]
    game.run_game(game_board)
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


end