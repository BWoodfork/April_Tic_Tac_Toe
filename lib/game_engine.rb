class Game_engine

  def game_over(game_board)
    full = Rules.board_full?(game_board)
    tie = Rules.tie_game?(game_board)
    win = Rules.game_winner(game_board)

    full || tie || win ? true : false
  end

  def run_game(game_board)
    return true while game_over(game_board) == false
  end
end