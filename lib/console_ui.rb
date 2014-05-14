class ConsoleUI
  def welcome_message
    send_message "Welcome to Ruby Tic Tac Toe"
  end

  def players?
    send_message "How many players?"
  end

  def send_message(message)
    puts message
  end

  def receive_message
    gets.chomp
  end
end