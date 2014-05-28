$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require 'console_ui'
require 'board'
require 'game_engine'

board = Board.new
ui = ConsoleUI.new
game_engine = GameEngine.new(ui, board)

game_engine.get_options
game_engine.display_board(game_board)

