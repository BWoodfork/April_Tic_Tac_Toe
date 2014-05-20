class GameEngine

  attr_accessor :player1, :player2

  def game_over(game_board)
    full = Rules.board_full?(game_board)
    tie = Rules.tie_game?(game_board)
    win = Rules.game_winner(game_board)

    full || tie || win ? true : false
  end

  def setup_players
    @player1 = HumanPlayer.new
    @player2 = HumanPlayer.new
  end

  # def run_game(game_board)  
  #   while !game_over(game_board) do
  #     current_player(game_board)
  #   end
  # end

  def current_player(game_board)
    tokens = game_board.reject { |spot| spot == nil }
    tokens.count.odd? ? @player2 : @player1
  end
end