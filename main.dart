import 'dart:io';


List<String> initializeBoard() {
  return List.generate(9, (index) => (index + 1).toString());
}


void displayBoard(List<String> board) {
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      stdout.write('${board[i * 3 + j]} | ');
    }
    print('');
    if (i < 2) print('---------');
  }
  print('');
}

bool checkWin(List<String> board, String marker) {

  for (var i = 0; i < 3; i++) {
    if ((board[i * 3] == marker && board[i * 3 + 1] == marker && board[i * 3 + 2] == marker) ||
        (board[i] == marker && board[i + 3] == marker && board[i + 6] == marker)) {
      return true;
    }
  }
  if ((board[0] == marker && board[4] == marker && board[8] == marker) ||
      (board[2] == marker && board[4] == marker && board[6] == marker)) {
    return true;
  }
  return false;
}

bool checkDraw(List<String> board) {
  return !board.any((cell) => cell != 'X' && cell != 'O');
}

int getPlayerMove(List<String> board, String player) {
  int move;
  while (true) {
    try {
      stdout.write('$player, enter your move (1-9): ');
      move = int.parse(stdin.readLineSync()!);
      if (move < 1 || move > 9 || board[move - 1] == 'X' || board[move - 1] == 'O') {
        print('Invalid move. Please choose an empty cell (1-9).');
      } else {
        break;
      }
    } catch (e) {
      print('Invalid input. Please enter a number.');
    }
  }
  return move;
}

void main() {
  while (true) {
    List<String> board = initializeBoard();
    String currentPlayer = 'X';
    bool gameWon = false;

    print('Welcome to Tic-Tac-Toe!');
    displayBoard(board);

    while (true) {
      int move = getPlayerMove(board, currentPlayer);
      board[move - 1] = currentPlayer;
      displayBoard(board);

      if (checkWin(board, currentPlayer)) {
        print('$currentPlayer wins!');
        gameWon = true;
        break;
      }

      if (checkDraw(board)) {
        print('It\'s a draw!');
        break;
      }

      currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
    }

    if (!gameWon) {
      print('Do you want to play again? (yes/no): ');
      String playAgain = stdin.readLineSync()!.toLowerCase();
      if (playAgain != 'yes') {
        break;
      }
    }
  }
}
