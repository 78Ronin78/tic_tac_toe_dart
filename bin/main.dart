import 'tic_tac_toe.dart';
import 'tic_tac_toe_func.dart';

void main() {
  // Запуск из библиотеки с одной функцией
  //run([]);

  // Запуск из библиотеки с функциями
  while (!initBoard()){
    print('Invalid board size, please enter again');
  }
  play();
}