#include "board.h"
#include <iostream>
using namespace std;

Board::Board(unsigned int cols, unsigned int rows, char matriz) :
  cols(cols),
  rows(rows),
  matriz(matriz)
{}

char Board::setMatriz() {
  char defSym = '|';
  char matriz[this->cols][this->rows] = {};
  for (int i = 0; i < this->cols; i++) {
    for (int j = 0; j < this->rows; j++) {
      matriz[i][j] = defSym;
    }
  }
  return matriz[this->cols][this->rows];
}

void Board::printRows() {
  for (int i = 0; i < this->rows; i++) {
    cout << " " << (i+1) << " ";
  }
  cout << endl;
}
void Board::printBoard() {
  for (int i = 0; i < this->cols; i++) {
    for (int j = 0; j < this->rows; j++) {
      cout << " " << this->matriz[i][j] << " ";
    }
    cout << endl;
  }
}

