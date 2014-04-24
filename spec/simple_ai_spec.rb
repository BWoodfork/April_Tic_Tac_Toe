require 'simple_ai'

describe SimpleAI do
  let(:simple_ai) {SimpleAI.new}

  
  it "should pick the first spot on an empty board" do
    game_board = [nil, nil, nil,
                  nil, nil, nil,
                  nil, nil, nil]

    simple_ai.pick_a_spot(game_board).should == 0
  end

  it "should pick the first open spot on the board" do
    game_board = ["x", "o", nil,
                  nil, nil, nil,
                  nil, nil, nil]
                  
    simple_ai.pick_a_spot(game_board).should == 2
  end

end