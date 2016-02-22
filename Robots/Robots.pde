void setup() {
  
  // Make canvas
  size(1000, 700);
  
  // Try out Tim's robot
  TMRobots timBot = new TMRobots();
  
  // We COULD create the line of timBots by cutting and pasting, but this is tedious.
  //timBot.drawAt(0, 500, 0.5, 0.5);
  //timBot.drawAt(100, 425, 0.45, 0.45);
  //timBot.drawAt(200, 350, 0.40, 0.40);
  //timBot.drawAt(300, 275, 0.35, 0.35);
  //timBot.drawAt(400, 200, 0.30, 0.30);
  //timBot.drawAt(500, 125, 0.25, 0.25);
  //timBot.drawAt(600, 50, 0.20, 0.20);
  
  // INSTEAD... we can use a loop
  int counter = 0;
  while (counter < 7) {
    
    // draw the timBot
    timBot.drawAt(0 + counter * 100, 500 - counter * 75, 0.5 - 0.05 * counter, 0.5 - 0.05 * counter);
    
    // must increment counter so the condition that ends the loop will occur
    counter += 1;
  }


} 