// Rock Paper Scissors
import 'dart:io';

enum move {rock, paper, scissors}
void main (){
  while (true){
    print('== Welcome to Rock, Paper, Scissors ==');
  stdout.write('Press: r,p,s for Quit: q -----> ');
  var userInput = stdin.readLineSync();
  // selecting player move
  var playerMove;

  if (userInput == 'r'){
    playerMove = move.rock;
  } else if (userInput == 'p'){
    playerMove = move.paper;
  } else if (userInput == 's'){
    playerMove = move.scissors;
  } else if (userInput == 'q'){
    break;
  } else {
    print('Invalid input');
  }
  }
}