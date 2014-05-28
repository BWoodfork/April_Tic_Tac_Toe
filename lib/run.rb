$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require 'console_ui'
require 'board'
require 'game_engine'
require 'human_player'

board = Board.new
ui = ConsoleUI.new
game_engine = GameEngine.new(ui, board)
game_board = board.game_board

game_engine.get_options

formatted_board = game_engine.display_board(game_board)
ui.print_board(formatted_board)

game_engine.run_game(game_board)
