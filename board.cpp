#include "board.h"
#include <iostream>
using namespace std;

Board::Board(unsigned int cols, unsigned int rows, bool matrSet) :
  cols(cols),
  rows(rows),
  matrSet(matrSet)
{}

char Board::setMatriz() {
  char defSym = '|';
  char matriz[this->cols][this->rows] = {};
  for (int i = 0; i < this->cols; i++) {
    for (int j = 0; j < this->rows; j++) {
      matriz[i][j] = defSym;
    }
  }
  matrSet = true;
  return matriz[this->cols][this->rows];
}
char Board::getMatriz() {
  if (matrSet == false) {
    char board = setMatriz();
  }
  return board;
}

void Board::printRows() {
  for (int i = 0; i < this->rows; i++) {
    cout << " " << (i+1) << " ";
  }
  cout << endl;
}
void Board::printBoard() {
  char board = getMatriz();
  for (int i = 0; i < this->cols; i++) {
    for (int j = 0; j < this->rows; j++) {
      cout << " " << board << " ";
    }
    cout << endl;
  }
}

