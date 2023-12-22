import 'dart:io';

void main() {
  String a = 'yes';
  while (a == 'yes') {
    playfun();
    print(
        '''Thank you for playing, are you want to play again! please, enter (Yes) :''');
    String? choose = stdin.readLineSync()!;
    a = choose.toLowerCase();
  }
  print('I wash you enjoy ._.');
}

void playfun() {
  List<String> s = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  int i = 0;
  String? result, tmp;
  int? char;
  funPrint(s);
  for (; i < 9; i++) {
    if (i > 4) {
      result = winFun(s);
      if (result == 'X' || result == 'O') {
        funPrint(s);
        print('\n***** THE GAME END *****');
        print('***** Player ${result == 'X' ? 1 : 2} is the winner *****\n');
        break;
      }
    }
    tmp = i % 2 == 0 ? 'X' : 'O';
    print(
        'player ${i % 2 == 0 ? 1 : 2} choose the number of place where you want to put "${tmp}" : ');
    char = int.parse(stdin.readLineSync()!);
    if (char < 1 || char > 9) {
      print(
          'The number you input is out of the range, please enter the number again that between 1 and 9 (including this number): ');
      char = int.parse(stdin.readLineSync()!);
    }
    s[char - 1] = tmp;
    funPrint(s);
  }

  if (i == 9) print('no one win in the play is win');
}

String winFun(List v) {
  if (v[0] == v[1] && v[1] == v[2])
    return v[1];
  else if (v[3] == v[4] && v[4] == v[5] ||
      v[1] == v[4] && v[4] == v[7] ||
      v[0] == v[4] && v[4] == v[8] ||
      v[2] == v[4] && v[4] == v[6])
    return v[4];
  else if (v[6] == v[7] && v[7] == v[8])
    return v[7];
  else if (v[0] == v[3] && v[3] == v[6])
    return v[3];
  else if (v[2] == v[5] && v[5] == v[8]) return v[5];
  return 'notWIN';
}

void funPrint(List m) {
  print('\n${m[0]} | ${m[1]} | ${m[2]}');
  print('--+---+--');
  print('${m[3]} | ${m[4]} | ${m[5]}');
  print('--+---+--');
  print('${m[6]} | ${m[7]} | ${m[8]}\n');
}

