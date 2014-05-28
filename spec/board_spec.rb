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

    # it "should fill in an empty space on game board with players token" do
    #   board.fill_space(0, "x")
    #   board.game_board[0].should == "x"
    # end

    # it "should not overwrite a played space on the board with a new token" do
    #   board.game_board[0] = "x"
    #   board.fill_space(0, "o")

    #   board.game_board[0].should == "x"
    # end
  end
end