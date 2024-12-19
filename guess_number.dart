import 'dart:io';

void main() {
  // The number to guess
  const int storedNum = 22;
  bool isCorrect = false;

  print("Welcome to the Number Guessing Game!");

  // Loop until the user guesses the correct number
  while (!isCorrect) {
    stdout.write("Enter your guess: ");
    String? input = stdin.readLineSync();

    // Validate user input
    if (input != null && int.tryParse(input) != null) {
      int guess = int.parse(input);

      // Check if the guess matches the stored number
      if (guess == storedNum) {
        print("🎉 Congratulations! You guessed correctly. ❤");
        isCorrect = true;
      } else {
        print("❌ Incorrect guess, please try again.");
      }
    } else {
      print("⚠️ Invalid input. Please enter a valid number.");
    }
  }
}
