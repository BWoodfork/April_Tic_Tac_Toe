class Board
  attr_accessor :game_board, :token

  def initialize
    @game_board = Array.new(9)
    @token = "x" || "o"
  end

  def fill_space(idx,token)
    if Rules.valid_spot?(game_board, idx) == true
      @game_board[idx] = token
    end
  end
end