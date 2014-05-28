class HumanPlayer
  attr_accessor :name, :token

  def initialize(token, ui)
    @name = name
    @token = token
    @ui = ui
  end

  def take_turn(game_board)
    move = @ui.get_move.to_i
    game_board[move] = @token
  end

end