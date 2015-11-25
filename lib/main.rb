require 'board'
require 'player'
require 'nrayaex'

class Game
  attr_reader :cols, :rows, :n, :x, :tokens, :winner
  def initialize(n, players)
    @cols = 2*n+1
    @rows = 2*n-1
    @n = n
    @players = players
    @tokens = ((2*n-1)*(2*n-2)/players)
    @playersArray = Array.new()
    @winner = false
  end

  def initGame
    createPlayers()
    $board = Board.new(@rows, @cols)
    turns()
  end

  def createPlayers
    i = 0
    $symbols = ['.']
    until i >= @players
      $stdout.print "> Enter your name player #{i+1}: "
      $stdout.flush
      name = gets
      sym = getPlayerSym(name)
      $symbols.push(sym)
      player = Player.new(name, sym, @tokens)
      @playersArray.push(player)    
      i += 1
    end
  end

  def getPlayerSym(name)
    $stdout.print "> Enter your symbol #{name.chomp}: "
    $stdout.flush
    sym = gets
    sym = sym.chr
    if valSym(sym) == true then getPlayerSym(name) else return sym end
  end

  def valSym(sym)
    result = $symbols.include?(sym)
    return result
  end

  def turns
    while @winner == false do
      player = @playersArray.shift
      if player.tokens != 0
        $stdout.print "> Enter the column that you like play "
        $stdout.print "(#{player.name.chomp} :: #{player.sym} :: #{player.tokens}): "
        $stdout.flush
        x = gets.to_i
        y = $board.setPoint(x, player.sym)
        player.setPosition(x,y)
        player.restToken()
        @playersArray.push(player)
      else
        raise NoMoreTokens
      end
      if player.checkWin == true then
        @winner = true
        puts "Congrats #{player.name.chomp}! You won on nraya game!"
        raise WeHaveWin
      end
    end
  end
end
