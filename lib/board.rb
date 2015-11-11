require 'matrix'

class Board
  attr_reader :cols, :rows, :matriz
  def initialize(cols, rows)
    @cols = cols
    @rows = rows
    setMatriz()
    printRows()
    $matriz.to_readable
  end
  
  def setMatriz
    $matriz = Matrix.build(@rows, @cols) { '*' }
  end

  def printRows
    i = 1
    while i < (rows-1) do
      if i < 10 then
        print " #{i} "
      else
        print " #{i}"
      end
      i += 1
    end
    print "\n"
  end
  
end

class Matrix
  def to_readable
    i = 0
    self.each do |number|
      print " " + number.to_s + " "
      i+= 1
      if i == self.column_size
        print "\n"
        i = 0
      end
    end
  end
end
