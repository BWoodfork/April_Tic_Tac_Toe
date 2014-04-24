module Rules
  WINNING_COMBOS = [[0,1,2],
                    [3,4,5],
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]

  def self.valid_spot?(game_board, idx)
    game_board[idx].nil?
  end

  def self.board_full?(game_board)
    !game_board.include?(nil)
  end

  def self.game_winner(game_board)
    WINNING_COMBOS.each do |winning_combo|
      return true if game_board[winning_combo[0]] == "x" && game_board[winning_combo[1]] == "x" && game_board[winning_combo[2]] == "x"
    end
    false
  end

#Need to write a test for this.
  def tie_game
    board_full? ? true : false
  end
end