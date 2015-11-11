#pragma once

class Board {
 public:
  Board(unsigned int cols,
	unsigned int rows,
	char matriz);
  char setMatriz();
  void printRows();
  void printBoard();
 private:
  unsigned int cols;
  unsigned int rows;
  char matriz;
};
