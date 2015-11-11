require 'board'

class Game
  attr_reader :cols, :rows
  def initialize(n)
    @cols = 2*n+1
    @rows = 2*n-1
    #initGame()
  end

  def initGame
    $board = Board.new(@rows, @cols)
  end
end
