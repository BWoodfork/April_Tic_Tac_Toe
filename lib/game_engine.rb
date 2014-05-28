require 'human_player'
require 'rules'

class GameEngine

  attr_accessor :player1, :player2

  def initialize(ui, board)
    @ui = ui
    @board = board
  end

  def get_options
    @ui.welcome_message
    @num_of_players = @ui.get_number_of_players
    set_players
  end

  def game_over(game_board)
    full = Rules.board_full?(game_board)
    tie = Rules.tie_game?(game_board)
    win = Rules.game_winner(game_board)

    full || tie || win ? true : false
  end

  def set_players
    # if @num_of_players == 2
      @player1 = HumanPlayer.new("x", @ui)
      @player2 = HumanPlayer.new("o", @ui)
    # else
    #   @player1 = HumanPlayer.new("x", @ui)
    #   @player2 = SimpleAI.new("o")
    # end
  end

  def current_player(game_board)
    tokens = game_board.reject { |spot| spot == nil }
    tokens.count.odd? ? @player2 : @player1
  end

  def run_game(game_board)
    while !game_over(game_board) do
      current_player(game_board).take_turn(game_board)
      puts display_board(game_board)
    end
  end

  def display_spots(spot)
    spot.nil? ? " " : spot
  end

  def make_rows(index)
    index % 3 == 0 ? "\n" : "|"
  end

  def display_board(game_board)
    display = ""
    game_board.each_with_index do |spot, idx|
        display << display_spots(spot)
        display << make_rows(idx + 1)
    end
    display
  end
end