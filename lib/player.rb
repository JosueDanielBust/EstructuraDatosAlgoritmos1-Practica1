require 'nrayaex'

class Player
  attr_reader :name, :sym, :tokens
  def initialize(name, sym, tokens)
    @name = name
    @sym = sym
    @tokens = tokens
    @positions = Array.new()
  end

  public
  def restToken
    @tokens -= 1
  end

  def setPosition(x,y)
    point = Array.new(x,y)
    @positions.push(point)
  end

  def checkWin
  end
end
