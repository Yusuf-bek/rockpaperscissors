import 'dart:math';

List<String> pngImages = [
  "assets/images/rock.png",
  "assets/images/paper.png",
  "assets/images/scissors.png",
  "assets/images/startpoint.jpg",
  "assets/images/await.gif"
];

int indexEnemy = 4;
int userIndex = 4;

void randomIndexEnemy() {
  indexEnemy = Random().nextInt(2);
}

String winnerReturner() {
  if (indexEnemy == userIndex) {
    return "Tie";
  } else if ((indexEnemy == 0 && userIndex == 1) ||
      (indexEnemy == 1 && userIndex == 2) ||
      (indexEnemy == 2 && userIndex == 0)) {
    return "You Won";
  } else {
    return "You Lose";
  }
}
