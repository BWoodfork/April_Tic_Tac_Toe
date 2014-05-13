class SimpleAI
  def pick_a_spot(game_board)
    game_board.find_index {|space| space.nil?}
  end
end
