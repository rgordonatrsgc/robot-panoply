void setup() {
  size(1000,700);
  background(255);
  int xOff = 25; //variable for x offset
  int yOff = 50; //used in second for loop to to take care of incrimenting y variable
  int yOff2 = 550;
  int slide; //variable that will store what slide the user is on for the storytelling of Romeo and Juliet
  int counter = 1;
  float distance = 0.5;
  EPRobot ethanBot = new EPRobot();
  // NOTE: for loops should be adjusted next class to scale bots giving perception of image depth
  for (int i = 350; i > 125; i -= 75) {
    distance = distance - 0.1;
    yOff2 = yOff2 - 125;
    ethanBot.drawAt(i - (xOff + 50), yOff2, distance, distance);
  }
  distance = 0;
  for (int j = 125; j < 500; j += 125) {
    distance = distance + 0.1;
    ethanBot.drawAt(775 - j, (100 + j) - yOff, 0.1 + distance, 0.1 + distance);
  }
}
