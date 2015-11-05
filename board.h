#pragma once

class Board {
 public:
  Board(unsigned int cols,
	unsigned int rows,
	bool matrSet);
  char getMatriz();
  char setMatriz();
  void printRows();
  void printBoard();
 private:
  unsigned int cols;
  unsigned int rows;
  bool matrSet;
};
