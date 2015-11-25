require 'nrayaex'

class Player
  attr_reader :name, :sym, :tokens
  def initialize(name, sym, tokens)
    @name = name
    @sym = sym
    @tokens = tokens
    @positions = Array.new($game.cols) {Array.new($game.cols, '.')}
  end

  public
  def restToken
    @tokens -= 1
  end

  def setPosition(x,y)
    @positions[y][x-1] = @sym
  end
  
  def checkWin
    #V: Vertical - #H: Horizontal - DR: Diagonal Right - DL: Diagonal Left
    i, j, k, v, h, dr, dl = [0]*7
    matriz = @positions
    matrizSize = matriz.size
    until i >= matrizSize do
      j = 0
      until j >= matrizSize do
        if matriz[j][i] == @sym then v += 1 else v = 0 end
        if matriz[i][j] == @sym then h += 1 else h = 0 end
        if matriz[i][j] == @sym && i < (matrizSize - $game.n + 1) then
          k = 0
          until k >= $game.n do
            if matriz[i+k][j+k] == @sym then dl += 1 else dl = 0 end
            if matriz[i+k][j-k] == @sym then dr += 1 else dr = 0 end
            k += 1
          end
        end
        if ( v == $game.n || h == $game.n || dr == $game.n || dl == $game.n ) then return true end
        j += 1
      end
      i += 1
      h = 0
    end
    return false
  end
end
