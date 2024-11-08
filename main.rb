require_relative "lib/game_board"
require_relative "lib/player"

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

game_board.check_diagonal_win

# loop the below until a win condition is met...create method to check for win
# play_round(game_board, player1)
# game_board.display_board
