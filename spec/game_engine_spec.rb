require "game_engine"

describe Game_engine do
  let(:game) {Game_engine.new}

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

  it "should run game until game is over" do
    game_board = ["x", nil, "x",
                  "o", "o", "x",
                  nil, nil, nil]
    game.run_game(game_board).should == true
  end

end
