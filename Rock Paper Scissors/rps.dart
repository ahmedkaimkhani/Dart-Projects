// Rock Paper Scissors
import 'dart:io';
import 'dart:math';

void main() {
  var move = [ 'rock', 'paper', 'scissors' ];
  bool condition = true;
  while (condition == true) {
    print('== Welcome to Rock, Paper, Scissors ==');
    stdout.write('Press: r,p,s for Quit: q -----> ');
    var userInput = stdin.readLineSync();
    // selecting player move
    var playerMove;

    if (userInput == 'r') {
      playerMove = move[0];
    } else if (userInput == 'p') {
      playerMove = move[1];
    } else if (userInput == 's') {
      playerMove = move[2];
    } else if (userInput == 'q') {
      condition = false;
    } else {
      print('Invalid input');
    }
    // Ai Move
    var randomMove = Random().nextInt(3);
    var aiMove = move[randomMove];

    // showing player move & ai move
    print('Player Move $playerMove');
    print('Ai Move $aiMove');

    // Game Logic
    if (playerMove == move[0] && aiMove == move[2] ||
        playerMove == move[1] && aiMove == move[0] ||
        playerMove == move[2] && aiMove == move[1]) {
          print('You Win');
        } else if (playerMove == aiMove){
          print('Draw');
        } else {
          print('You Loose');
        }
  }
}
