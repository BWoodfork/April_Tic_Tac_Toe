require 'console_ui' 
require 'stringio'

describe ConsoleUI do
  let(:output) { StringIO.new }
  let(:ui) { ConsoleUI.new(output) }

  it "gets the number of players" do
    allow(ui).to receive(:receive_message) { 2 }
    ui.get_number_of_players.should == 2
  end
  
  it "should get the number of players" do
    allow(ui).to receive(:get_number_of_players) { 2 }
    ui.get_number_of_players
  end

  # it "should get player names" do
  #   allow(ui).to receive(:get_number_of_players) { 2 }
  #   allow(ui).to receive(:get_player_names) { "Byron", "Dave" }
  #   ui.get_player_names

end


#need something that says if 1 player, then run AI
#need something that says if 2 player, then run Human vs Human
#need to display board
#need to be able to receive input through command line for filling in a spot
#need to display a game winner