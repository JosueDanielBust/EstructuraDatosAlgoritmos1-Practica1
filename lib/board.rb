require 'nrayaex'

class Board
  attr_reader :cols, :rows, :matriz
  def initialize(cols, rows)
    @cols = cols
    @rows = rows
    setMatriz()
    printBoard()
  end

  private
  def setMatriz
    $matriz = Array.new(@rows) {Array.new(@cols, '|')}
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

  public
  def printBoard
    printRows()
    printMatriz()
    puts ''
  end

  def setPoint(x, sym)
    if x < @rows
      point = @cols+1
      x -= 1
      while $matriz[point][x] != '|' do
        point = point - 1
      end
      $matriz[point][x] = sym
      system 'clear' or system 'cls'
      printBoard()
    else
      puts "Exception: Number of selected row too big"
      raise BigNumberError.new
    end
  end
end
