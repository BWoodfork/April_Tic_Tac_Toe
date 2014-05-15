require 'human_player'
require 'console_ui'

describe HumanPlayer do
  let(:ui) {ConsoleUI.new}
  let(:human) {HumanPlayer.new("x", ui)}

  it "should have a name" do
    human.name = "byron"
    human.name.should == "byron"
  end

  it "should have a token" do
    human.token.should == "x"
  end

  it "should take a turn" do
    game_board = [nil, nil, nil,
                  nil, nil, nil,
                  nil, nil, nil]
    allow(ui).to receive(:get_move) { 0 }
    human.take_turn(game_board)

    game_board.should == ["x", nil, nil,
                          nil, nil, nil,
                          nil, nil, nil]

  end
end