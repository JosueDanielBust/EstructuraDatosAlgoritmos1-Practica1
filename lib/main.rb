require 'board'
require 'player'

class Game
  attr_reader :cols, :rows, :n, :x, :tokens
  def initialize(n, players)
    @cols = 2*n+1
    @rows = 2*n-1
    @n = n
    @players = players
    @tokens = ((2*n-1)*(2*n-2)/players)
    @playersArray = Array.new()
  end

  def initGame
    createPlayers()
    $board = Board.new(@rows, @cols)
  end

  def createPlayers
    i = 0
    until i >= @players
      $stdout.print "> Enter your name player #{i+1}: "
      $stdout.flush
      name = gets
      $stdout.print "> Enter your symbol #{name.chomp}: "
      $stdout.flush
      sym = gets
      player = Player.new(name, sym, @tokens)
      @playersArray.push(player)
      i += 1
    end
  end
end
