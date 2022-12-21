// ignore_for_file: avoid_print
import 'dart:io';
import 'package:hello_flutter1/game.dart';
var myList = <int>[];
var len = myList.length;
void main() {

  var game = Game(); // เรียกใช้คลาส game
  late GuessResult guessResult ;

  print('╔══════════════════════════════════════════════════');
  print('║              GUESS THE NUMBER                    ');
  print('║──────────────────────────────────────────────────');
  do {
    stdout.write('║  Guess the number between 1 and 100 : ');

    var input = stdin.readLineSync();

    if (input == null) {
      //print('Error, input is NULL');
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {

      continue;
    }
    var isplay = false;
    guessResult = game.doGuess(guess);
    if(guessResult == GuessResult.correct){
      print('║  ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
      print('║──────────────────────────────────────────────────');
      print('║                    THE END                       ');
      print('╚══════════════════════════════════════════════════');
      myList.add(game.totalGuesses);

      do{
        stdout.write('Play again? (Y/N): ');
        var selec = stdin.readLineSync();
        if(selec == 'Y' || selec == 'y'){
          isplay = Play(selec);
        }else if(selec == 'N' || selec == 'n'){
            print("You've played $len games");
          for (var i = 0; i < myList.length; i++) {
            int a = i+1;
            int count = myList[i];
            print("🚀 GAME #$a: $count guesses");
          }
          isplay = true;
        }else{
            continue;
        }
      }while (!isplay);

    }else if(guessResult == GuessResult.tooHigh){
      print('║  ➜ $guess is TOO HIGH! ▲');
      print('║──────────────────────────────────────────────────');
    }else{
      print('║  ➜ $guess is TOO LOW! ▼');
      print('║──────────────────────────────────────────────────');
    }
  } while (guessResult != GuessResult.correct );

}
Play(var selec ){
   var game = Game(); // เรียกใช้คลาส game
   late GuessResult guessResult ;

   print('╔══════════════════════════════════════════════════');
   print('║              GUESS THE NUMBER                    ');
   print('║──────────────────────────────────────────────────');
   do {
     stdout.write('║  Guess the number between 1 and 100 : ');

     var input = stdin.readLineSync();

     if (input == null) {
       //print('Error, input is NULL');
       return;
     }

     var guess = int.tryParse(input); //แปลงเป็นเลขจำนวนเต็ม คือถ้ามีการแปลงแปลว่าไม่ได้กรอกเลขมา

     if (guess == null) {
       //print('Input error, please enter numbers only');
       continue;
     }
     var isplay = false;
     guessResult = game.doGuess(guess);  //เรียกใช้คลาส doguess ในคลาสเกม
     if(guessResult == GuessResult.correct){
       print('║  ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
       print('║──────────────────────────────────────────────────');
       print('║                    THE END                       ');
       print('╚══════════════════════════════════════════════════');
       myList.add(game.totalGuesses);
       do{
         stdout.write('Play again? (Y/N): ');
         var selec = stdin.readLineSync();
         if(selec == 'Y' || selec == 'y'){
           isplay = Play(selec);
         }else if(selec == 'N' || selec == 'n'){
             print("You've played $len games");
           for (var i = 0; i < myList.length; i++) {
             int a = i+1;
             int count = myList[i];
             print("🚀 GAME #$a: $count guesses");

           }
           isplay = true;
         }else{
           continue;
         }
       }while (!isplay);

     }else if(guessResult == GuessResult.tooHigh){
       print('║  ➜ $guess is TOO HIGH! ▲');
       print('║──────────────────────────────────────────────────');
     }else{
       print('║  ➜ $guess is TOO LOW! ▼');
       print('║──────────────────────────────────────────────────');
     }
   } while (guessResult != GuessResult.correct );
}
