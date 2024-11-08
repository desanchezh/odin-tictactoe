# titactoe gameboard
class GameBoard
  attr_accessor :game_board

  def initialize
    @game_board = [%w[_ _ _],
                   %w[_ _ _],
                   %w[_ _ _]]
  end

  def display_board
    @game_board.each do |array|
      puts array.join(" ")
    end
  end

  def make_selection(row, index, player_string)
    @game_board[row][index] = player_string
  end
end

game_board = GameBoard.new

game_board.make_selection(0, 1, "X")
game_board.display_board
