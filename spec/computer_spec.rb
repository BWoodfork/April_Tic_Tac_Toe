require 'computer'

describe Computer do
  let(:computer) {Computer.new("o")}

  it "has an intelligence" do
    computer.ai.class.should == SimpleAI
  end

  it "is player O" do
    computer.token.should == "o"
  end

  it "should take a turn" do
    game_board = ["x", nil, nil,
                  nil, nil, nil,
                  nil, nil, nil]
    computer.take_turn(game_board)
    game_board.should == ["x", "o", nil,
                          nil, nil, nil,
                          nil, nil, nil]
  end

end