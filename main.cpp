#include "board.h"
#include <iostream>

using namespace std;

int main() {
  unsigned int n;
  cout << "Ingrese el n: ";
  cin >> n;
  unsigned int cols = 2*n+1;
  unsigned int rows = 2*n-2;
  Board theBoard(cols, rows, false);
  theBoard.getMatriz();
  theBoard.printRows();
  theBoard.printBoard();
  return 0;
}
