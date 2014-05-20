class Rules
  class << self
    WINNING_COMBOS = [[0,1,2],
                      [3,4,5],
                      [6,7,8],
                      [0,3,6],
                      [1,4,7],
                      [2,5,8],
                      [0,4,8],
                      [2,4,6]]
  
    def valid_spot?(game_board, idx)
      game_board[idx].nil?
    end
  
    def board_full?(game_board)
      !game_board.include?(nil)
    end
  
    def tie_game?(game_board)
      board_full?(game_board) ? true : false
    end
  
    def game_winner(game_board)
      WINNING_COMBOS.each do |winning_combo|
        return true if game_board[winning_combo[0]] == "x" && game_board[winning_combo[1]] == "x" && game_board[winning_combo[2]] == "x"
      end
      false
    end
  
    def empty_board?(game_board)
      game_board.all? { |spot| spot == nil }
    end
  
    def current_player(game_board) #  < -- This is duplicate code. Remove when you find out why you need to.
      tokens = game_board.reject { |spot| spot == nil }
      tokens.count.odd? ? "o" : "x"
    end
  end
end