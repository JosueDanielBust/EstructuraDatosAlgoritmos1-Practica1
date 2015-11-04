#include <iostream>

using namespace std;

void printRows(int rows) {
  for (int i = 0; i < rows; i++) {
    cout << " " << i << " ";
  }
  cout << endl;
}

int board(const int cols, const int rows) {
  char def = '|';
  char matriz[cols][rows] = {};
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      matriz[i][j] = def;
    }
  }
  printRows(rows);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      cout << " " << matriz[i][j] << " ";
    }
    cout << endl;
  }
  return 0;
}
