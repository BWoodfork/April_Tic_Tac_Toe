require 'spec_helper'
require 'board'

describe Board do
  context "#newboard" do
    let(:board) { Board.new }

    it "creates a board with 9 empty spaces" do
      board.game_board.should == [nil, nil, nil,
                                  nil, nil, nil,
                                  nil, nil, nil]
    end

    it "should fill in an empty space on game board with players token" do
      board.fill_space(0, "x")
      board.game_board[0].should == "x"
    end

    it "should not overwrite a played space on the board with a new token" do
      board.game_board[0] = "x"
      board.fill_space(0, "o")

      board.game_board[0].should == "x"
    end
  end
end










# "should initialize a new board"
# "should initialize a position given a board and turn"
# "should make a move"
# "should list possible moves for initial position"
# "should list possible moves for a position"
# "should find winning columns, rows, diagnoals"
# "should determine no win"
# "should determine a win for x"
# "should determine not blocked"
# "should determine nothing from initial position"
# "should determine a won position for x"
# "should determine a won position for o"
# "should determine a won position for o"