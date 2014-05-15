class GameEngine
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

  # while !game_over?(game_board)
  #   player.take_turn or current_player

#   def ai_turn
#     ai.move
#     #ai picks a space and fills it
#     human_turn
#     #if game_over? call some game over
#   end

#   def human_turn
#     input = accept_input
#     #fill inputted cell with human_player.value
#     ai_turn
#   end

#   def game_over
#     #display who won, etc...
#   end

#   def accept_input
#     gets.chomp.downcase
#   end
# end