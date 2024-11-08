require_relative "lib/game_board"
require_relative "lib/player"

game_board = GameBoard.new
player1 = Player.new("X")

game_board.make_selection(0, 2, player1.selection)
game_board.display_board

game_board.make_selection(1, 2, player1.selection)
