require 'human_player'

describe Human_player do
  let(:human) {Human_player.new}
  
  it "should define a token" do
    human.token.should == "x"
  end
end