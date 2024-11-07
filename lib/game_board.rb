# titactoe gameboard
class GameBoard
  def initialize
    @top = %w[_ _ _]
    @middle = %w[_ _ _]
    @bottom = %w[_ _ _]
    puts @top.join(" ")
    puts @middle.join(" ")
    puts @bottom.join(" ")
  end
end
