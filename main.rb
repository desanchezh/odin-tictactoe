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

def check_win(game_board)
  game_board.game_board.each do |array| # check horizonal wins
    if array.uniq.count <= 1 && array[0] != "_"
      winning_symbol = array.dup.pop
      puts "#{winning_symbol} wins!!"
    end
  end
end

game_board.display_board
game_board.make_selection(0, 0, "X")
game_board.display_board
game_board.make_selection(0, 1, "X")
game_board.display_board
check_win(game_board)
game_board.make_selection(0, 2, "X")
check_win(game_board)
game_board.display_board

# loop the below until a win condition is met...create method to check for win
# play_round(game_board, player1)
# game_board.display_board
