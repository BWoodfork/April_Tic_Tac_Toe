module Rules

  def self.valid_spot?(game_board, idx)
    if game_board[idx] == nil
      true
    else
      false
    end
  end

  def self.board_full?(game_board)
    game_board.include?(nil) ? false : true
  end

  def self.row_winner(game_board)
    if game_board[0..2] = "x"
      true
    elsif game_board[3..5] = "x"
      true
    elsif game_board[6..8] = "x"
      true
    else false
    end
  end

  def self.column_winner(game_board)
    true
  end
end