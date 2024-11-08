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
    puts "space occupied" if @game_board[row][index] != "_"
    @game_board[row][index] = player_string
  end

  def check_horizontal_win
    @game_board.each do |array|
      if array.uniq.count <= 1 && array[0] != "_"
        winning_symbol = array.dup.pop
        puts "GAME OVER #{winning_symbol} wins!!"
      end
    end
  end

  def check_vertical_win
    verticals = @game_board[0].zip(@game_board[1], @game_board[2])
    verticals.each do |array|
      if array.uniq.count <= 1 && array[0] != "_"
        winning_symbol = array.dup.pop
        puts "GAME OVER #{winning_symbol} wins!!"
      end
    end
  end

  def check_diagonal_win
    diagonal_left = @game_board[0][0], @game_board[1][1], @game_board[2][2]
    diagonal_right = @game_board[0][2], @game_board[1][1], @game_board[2][0]
    if diagonal_left.uniq.count <= 1 && diagonal_left[0] != "_"
      puts "GAME OVER #{@game_board[0][0]} wins!!"
    elsif diagonal_right.uniq.count <= 1 && diagonal_right[0] != "_"
      puts "GAME OVER #{@game_board[0][2]} wins!!"
    end
  end
end
