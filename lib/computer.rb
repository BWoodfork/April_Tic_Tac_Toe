class Computer
  attr_accessor :ai, :token

  def initialize(token)
    @ai = SimpleAI.new
    @token = token
  end

  def take_turn(game_board)
    spot = @ai.pick_a_spot(game_board)
    game_board[spot] = token
  end
end