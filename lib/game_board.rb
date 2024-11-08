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

  def check_horizontal_win
    # check horizonal wins
    @game_board.each do |array|
      if array.uniq.count <= 1 && array[0] != "_"
        winning_symbol = array.dup.pop
        puts "GAME OVER #{winning_symbol} wins!!"
      end
    end
  end

  def check_vertical_win
    # check vertical wins
    vertical = @game_board[0].zip(@game_board[1], @game_board[2])
    vertical.each do |array|
      if array.uniq.count <= 1 && array[0] != "_"
        winning_symbol = array.dup.pop
        puts "GAME OVER #{winning_symbol} wins!!"
      end
    end
  end
end
