const assetsPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetsPath/$name.png';
}

enum Result {
  playerWin('Player 승리'),
  draw('무승부'),
  cpuWin('Player 패배');

  const Result(this.displayString);

  final String displayString;
}