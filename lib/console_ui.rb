require 'game_engine'
require 'board'

class ConsoleUI

  attr_reader :io

  def initialize(io = Kernel)
    @io = io
  end

  def welcome_message
    send_message "Welcome To Ruby Tic Tac Toe"
  end

  def get_number_of_players
    send_message "How many players?"
    receive_message
  end

  def send_message(message)
    @io.puts message
  end

  def receive_message
    gets.chomp
  end

  def print_board(game_board)
    print game_board
  end

  alias :get_move :receive_message

end