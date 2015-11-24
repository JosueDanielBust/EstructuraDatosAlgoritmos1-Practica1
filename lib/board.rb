class Board
  attr_reader :cols, :rows, :matriz
  def initialize(cols, rows)
    @cols = cols
    @rows = rows
    setMatriz()
    printBoard()
    setPoint(2,3)
    printBoard()
  end

  private
  def setMatriz
    $matriz = Array.new(@rows) {Array.new(@cols, '*')}
  end

  def printRows
    i = 1
    while i < (rows-1) do
      if i < 10 then print " #{i} "
      else print " #{i}"
      end
      i += 1
    end
    puts ''
  end
  
  def printMatriz
    $matriz.each do |i|
      i.each do |j|
        print " #{j} "
      end
      puts ''
    end
  end

  def setPoint(x,y)
    $matriz[x][y] = '?'
  end
  
  public
  def printBoard
    printRows()
    printMatriz()
    puts ''
  end
end
