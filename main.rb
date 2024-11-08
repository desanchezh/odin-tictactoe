require_relative "lib/game_board"
require_relative "lib/player"

# just barely meets requirements...ideas for future refactor below
# end program if win message sent, verify input is in range/improve input method, message for tie
game_board = GameBoard.new
player1 = Player.new("X")
player2 = Player.new("O")

def play_round(game_board, player)
  puts "Select a row 0-2"
  row = Integer(gets)
  puts "Select a column 0-2"
  index = Integer(gets)
  game_board.make_selection(row, index, player.symbol)
end

def check_all_wins(game_board)
  game_board.check_diagonal_win
  game_board.check_vertical_win
  game_board.check_horizontal_win
end

# game flow below
game_board.display_board

9.times do
  play_round(game_board, player1)
  game_board.display_board
  check_all_wins(game_board)
  play_round(game_board, player2)
  game_board.display_board
  check_all_wins(game_board)
end
