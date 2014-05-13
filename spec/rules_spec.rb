require 'rules'

describe Rules do
  context "board rules" do
    let(:game_board) { [nil, nil, "x",
                        nil, nil, nil,
                        nil, nil, nil] }

    it "recognizes an open space as a valid spot" do
      Rules.valid_spot?(game_board, 0).should == true
    end

    it "recognizes a space that has been played already as an invalid spot" do
      Rules.valid_spot?(game_board, 2).should == false
    end
  end

  context "check game over" do
    it "checks if all spots are taken" do
     full_board = ["x", "o", "x",
                   "x", "o", "o",
                   "o", "x", "x"]

      Rules.board_full?(full_board).should == true
    end

    it "should continue game if board is not full" do
      open_board = [nil, "o", "x",
                    "x", "o", "o",
                    "o", "x", "x"]

      Rules.board_full?(open_board).should == false
    end

    it "it knows when there is no winner" do
      Rules.game_winner(Array.new(9)).should == false
    end
  end

  context "check horizontal winner" do
    it "should check horizontal row for a game winner" do
      win_board =  ["x", "x", "x",
                    nil, nil, nil,
                    nil, nil, nil]

      Rules.game_winner(win_board).should == true
    end

    it "should check second horizontal row for a game winner" do
      win_board = [nil, nil, nil,
                   "x", "x", "x",
                   nil, nil, nil]
      Rules.game_winner(win_board).should == true
    end

    it "should check third horizontal row for a game winner" do
      win_board = [nil, nil, nil,
                   nil, nil, nil,
                   "x", "x", "x"]
      Rules.game_winner(win_board).should == true
    end
  end

  context "check column winner" do
    it "should check column for a winner" do
      win_board = ["x", nil, nil,
                   "x", nil, nil,
                   "x", nil, nil]

      Rules.game_winner(win_board).should == true
    end

    it "should check second column for a winner" do
      win_board = [nil, "x", nil,
                   nil, "x", nil,
                   nil, "x", nil]

      Rules.game_winner(win_board).should == true
    end

    it "should check third column for a winner" do
      win_board = [nil, nil, "x",
                   nil, nil, "x",
                   nil, nil, "x"]

      Rules.game_winner(win_board).should == true
    end
  end

  context "check diagnol winner" do
    it "should check left diagnol for a winner" do
      win_board = ["x", nil, nil,
                   nil, "x", nil,
                   nil, nil, "x"]

      Rules.game_winner(win_board).should == true
    end

    it "should check right diagnol for a winner" do
      win_board = [nil, nil, "x",
                   nil, "x", nil,
                   "x", nil, nil]
                   
      Rules.game_winner(win_board).should == true
    end
  end

  context "switch turns" do
    it "should check if board is empty" do
      game_board =  [nil, nil, nil,
                     nil, nil, nil,
                     nil, nil, nil]
      Rules.empty_board?(game_board).should == true
    end

    it "should set current player to be x when board is empty" do
      game_board =  [nil, nil, nil,
                     nil, nil, nil,
                     nil, nil, nil]
      Rules.current_player(game_board).should == "x"
    end

    it "should set current player to be o when one turn has been played" do
      game_board = ["x", nil, nil,
                    nil, nil, nil,
                    nil, nil, nil]
      Rules.current_player(game_board).should == "o"
    end

     it "should set current player to be x when one turn has been played" do
      game_board = ["x", "o", nil,
                    nil, nil, nil,
                    nil, nil, nil]
      Rules.current_player(game_board).should == "x"
    end


  end
end