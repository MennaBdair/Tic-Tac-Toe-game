import 'dart:io';

void main() {
  while (true) {
    playfun();
    print('''Thank you for playing, are you want to play again!
  please, enter (Yes or No) :''');
    String? choose = stdin.readLineSync()!;
    String a = choose.toLowerCase();
    if (a == 'no') break;
  }
  print('I wash you enjoy ._.');
}

void playfun() {
  List<String> s = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  var c = 0;
  int? char;
  for (int i = 1; i <= 9; i++) {
    if (i > 3) {
      if (winfun(s) == 'X') {
        print('\n');
        print('*****THE GAME END***** \n');
        print('*****player 1 is the winner*****\n');
        break;
      }
      if (winfun(s) == 'O') {
        print('\n');
        print('*****THE GAME END*****\n');
        print('*****player 2 is the winner*****\n');
        break;
      }
    }
    funPrint(s);

    if (i % 2 == 1) {
      print('player 1 choose the number of place where you want to put "X" : ');
      char = int.parse(stdin.readLineSync()!);
      if (cheakRange(char)) {
        print(
            'The number you input is out of the range, please enter the number again that between 1 and 9(including this number) :  ');
        char = int.parse(stdin.readLineSync()!);
      }

      changefun1(s, char);
    } else if (i % 2 == 0) {
      print('player 2 choose the number of place where you want to put "O" : ');
      char = int.parse(stdin.readLineSync()!);
      if (cheakRange(char)) {
        print(
            'The number you input is out of the range, please enter the number again that between 1 and 9(including this number) :  ');
        char = int.parse(stdin.readLineSync()!);
      }
      changefun2(s, char);
    }
    c += 1;
  }
  if (c == 9) {
    if (winfun(s) == 'notWIN') print('no one win in the play is win');
  }
}

void funPrint(List m) {
  print('\n');
  print('${m[0]} | ${m[1]} | ${m[2]}');
  print('--+---+--');
  print('${m[3]} | ${m[4]} | ${m[5]}');
  print('--+---+--');
  print('${m[6]} | ${m[7]} | ${m[8]}');
  print('\n');
}

void changefun1(List n, var char) {
  n[char - 1] = 'X';
}

void changefun2(List n, var char) {
  n[char - 1] = 'O';
}

String winfun(List v) {
  if (v[0] == v[1] && v[1] == v[2])
    return v[1];
  else if (v[3] == v[4] && v[4] == v[5])
    return v[4];
  else if (v[6] == v[7] && v[7] == v[8])
    return v[7];
  else if (v[0] == v[3] && v[3] == v[6])
    return v[3];
  else if (v[1] == v[4] && v[4] == v[7])
    return v[4];
  else if (v[2] == v[5] && v[5] == v[8])
    return v[5];
  else if (v[0] == v[4] && v[4] == v[8])
    return v[4];
  else if (v[2] == v[4] && v[4] == v[6]) return v[4];
  return 'notWIN';
}

bool cheakRange(var ch) {
  if (ch < 1 || ch > 9) return true;
  return false;
}
