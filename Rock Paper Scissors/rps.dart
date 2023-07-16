// Rock Paper Scissors
import 'dart:io';
import 'dart:math';

enum move { rock, paper, scissors }

void main() {
  while (true) {
    print('== Welcome to Rock, Paper, Scissors ==');
    stdout.write('Press: r,p,s for Quit: q -----> ');
    var userInput = stdin.readLineSync();
    // selecting player move
    var playerMove;

    if (userInput == 'r') {
      playerMove = move.rock;
    } else if (userInput == 'p') {
      playerMove = move.paper;
    } else if (userInput == 's') {
      playerMove = move.scissors;
    } else if (userInput == 'q') {
      break;
    } else {
      print('Invalid input');
    }
    // Ai Move
    var randomMove = Random().nextInt(3);
    var aiMove = move.values[randomMove];

    // showing player move & ai move
    print('Player Move $playerMove');
    print('Ai Move $aiMove');

    // Game Logic
    if (playerMove == move.rock && aiMove == move.scissors ||
        playerMove == move.paper && aiMove == move.rock ||
        playerMove == move.scissors && aiMove == move.paper) {
          print('You Win');
        } else if (playerMove == aiMove){
          print('Draw');
        } else {
          print('You Loose');
        }
  }
}
