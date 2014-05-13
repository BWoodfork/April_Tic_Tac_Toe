require 'human_player'

describe Human_player do
 let(:human) {Human_player.new}
 let(:game_board) { [nil, nil, "x",
                        nil, nil, nil,
                        nil, nil, nil] }
                        
  it "should have a token" do
    human.token.should == "x"
  end
end