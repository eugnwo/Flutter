const assetsPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetsPath/${this.name}.png';
}