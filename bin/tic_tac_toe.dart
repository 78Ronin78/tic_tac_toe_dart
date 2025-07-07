import 'dart:io';

// Фигуры в клетке поля
const int empty = 0;
const int cross = 1;
const int nought = 2;

// состояние игрового процесса
const int playing = 0;
const int draw = 1; //ничья
const int crossWin = 2; // победа Х
const int noughtWin = 3; // победа 0
const int quit = 3;

void main(List<String> arguments) {
  late List<List<int>> board;
  int boardSize = 3; // размер игрового поля по-умолчнию
  int state = playing;
  int currentPlayer = cross; // текущий игрок

  while (true) {
    stdout.write('Enter the size of the board (3-9): ');
    int? size = int.tryParse(stdin.readLineSync()!);
    size ??= boardSize;
    if (size < 3 || size > 9) {
      print('Invalid size, please enter again');
      continue;
    }
    boardSize = size;
    board = List.generate(size, (_) => List.filled(boardSize, empty));
    break;
  }

  // Вывод в консоль состояния игрового поля
  stdout.write('  ');
  for (int i = 0; i < boardSize; i++){
    stdout.write('${i + 1}'); // вывод номера столбца
  }
  stdout.write('\n');

  for (int i = 0; i < boardSize; i++){
    stdout.write('${i + 1} '); // вывод номера строки
    for (int j = 0; j < boardSize; j++){
      switch (board[i][j]) {
        case empty: stdout.write('. ');
        case cross: stdout.write('X ');
        case nought: stdout.write('0 ');
      }
    }
    print('');
  }
  // Завершение ввода терминала

  while (state == playing) {
    //TODO
  }
}
