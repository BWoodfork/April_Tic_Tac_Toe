require 'simple_ai'

describe Simple_ai do
  let(:simple_ai) {Simple_ai.new}

  
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