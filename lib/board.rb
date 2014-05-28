class Board
  attr_accessor :game_board, :token

  def initialize
    @game_board = Array.new(9)
    @token
  end


# This fill in method might be pointless as the Human and computer class have a similar method. Delete this and the test for it once you're sure you should =) 
  # def fill_space(idx,token)
  #   if Rules.valid_spot?(game_board, idx) == true
  #     @game_board[idx] = token
  #   end
  # end
end