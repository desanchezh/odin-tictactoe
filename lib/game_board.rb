# titactoe gameboard
class GameBoard
  attr_accessor :game_board

  def initialize
    @game_board = [%w[1 O 3],
                   %w[X O 6],
                   %w[X O 9]]
  end

  def display_board
    @game_board.each do |array|
      puts array.join(" ")
    end
  end

  def make_selection(row, index, player_string)
    puts "space occupied" if @game_board[row][index] != "_"
    @game_board[row][index] = player_string
  end
end
