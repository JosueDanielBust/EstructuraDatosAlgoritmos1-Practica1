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
    point = [x,y]
    @positions.push(point)
  end

  def getPositions
    return @positions
  end
  
  def checkWin
    #V: Vertical - #H: Horizontal - DR: Diagonal Right - DL: Diagonal Left
    i, j, k, v, h, dr, dl = [0]*7
    matriz = $board.getMatriz
    until i >= $game.rows do
      j = 0
      until j >= $game.cols do
        if matriz[j][i] == @sym then v += 1 else v = 0 end
        if matriz[i+2][j] == @sym then h += 1 else h = 0 end
        if matriz[i][j] == @sym && i > ($game.rows - $game.n + 1) then
          k = 0
          until k >= $game.n
            if matriz[i+k][j+k] == @sym then dl += 1 else dl = 0 end
            if matriz[i+k][j-k] == @sym then dr += 1 else dr = 0 end
            k += 1
          end
        end
        if ( v == $game.n || h == $game.n || dr == $game.n || dl == $game.n ) then
          return true
        end
        j += 1
      end
      i += 1
      h = 0
    end
    return false
  end
end
