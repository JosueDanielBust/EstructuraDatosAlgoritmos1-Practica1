require 'board'

class Game
  attr_reader :cols, :rows, :n, :x
  def initialize(n, x)
    @cols = 2*n+1
    @rows = 2*n-1
    @n = n
    @x = x
  end

  def initGame
    $board = Board.new(@rows, @cols)
  end
end
