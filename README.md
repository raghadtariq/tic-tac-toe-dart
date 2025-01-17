
# Tic-Tac-Toe Game in Dart

A simple command-line Tic-Tac-Toe game implemented in Dart. Two players take turns to place their markers (`X` and `O`) on a 3x3 grid. The game ends when a player wins or the board is full (a draw).

## Features
- Interactive player input
- Validates moves to ensure they are within range and not already taken
- Detects a win or draw condition
- Option to replay the game after each round

## Prerequisites
1. [Install Dart SDK](https://dart.dev/get-dart) on your computer.
2. Ensure Dart is properly added to your system's PATH.

## Installation
1. Clone or download this repository to your local machine.
2. Save the Dart code in a file named `tic_tac_toe.dart`.

## How to Run
1. Open a terminal or command prompt and navigate to the directory where the `tic_tac_toe.dart` file is saved.
2. Run the game with the following command:
   ```bash
   dart run tic_tac_toe.dart
   ```

## How to Play
1. When the game starts, you’ll see an empty board:
   ```
   1 | 2 | 3
   ---------
   4 | 5 | 6
   ---------
   7 | 8 | 9
   ```
2. Players take turns to place their markers (`X` for Player 1 and `O` for Player 2) by entering a number (1-9) corresponding to the cell position.
3. The board updates after each move, showing the current state.
4. The game ends when:
   - A player places three of their markers in a row, column, or diagonal.
   - The board is full (a draw).
5. After the game concludes, you can choose to replay or exit:
   - Enter `yes` to play again.
   - Enter `no` to exit.
