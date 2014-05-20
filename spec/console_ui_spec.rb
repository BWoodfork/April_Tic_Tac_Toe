require 'console_ui' 
require 'stringio'

describe ConsoleUI do
  let(:output) { StringIO.new }
  let(:ui) { ConsoleUI.new(output) }

  it "should ask how many players" do
    allow(ui).to receive(:receive_message) { "How many players?\n" }
    ui.number_of_players
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


# ask how many players
# receive the input of the number of players
# 
# display the board
# display the game winner

#need something that says if 1 player, then run AI.
#