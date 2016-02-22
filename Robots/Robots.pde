void setup() {
  
  // Make canvas
  size(1000, 700);
  
  // Dark grey background
  background(100);
  
  // Text on screen should be centred
  textMode(CENTER);
  
  // ROW ONE of robots... drawing from left to right
  
  // Try out Adam's robot
  ASPRobot adamBot = new ASPRobot();
  adamBot.drawAt(0, 0, 0.25, 0.25);
  fill(0);
  text("ASPRobot", 50, 200);
  
  // Try out Ben's robot
  BDRobot benBot = new BDRobot();
  benBot.drawAt(150, 0, 0.25, 0.25);
  fill(0);
  text("BDRobot", 200, 200);
  
  // Try out Darius' robot
  // NOTE: Ask Darius to fix the following:
  //    1. Robot cannot be scaled.
  //    2. Robot code uses an image filter; should be removed to
  //       avoid impacting other robot draw routines.
  //
  // If Darius commits his work, then issues a new pull request, the fixed 
  // code then be distributed to everyone in class.
  //
  //DDRobot dariusBot = new DDRobot();
  //dariusBot.drawAt(300,0);
  fill(0);
  textMode(LEFT);
  text("(Needs to scale; remove ", 300, 35);
  text(" blur so other robots)", 300, 55);
  text(" not affected)", 300, 75);
  textMode(CENTER);
  text("DDRobot", 350, 200);
  
  // Try out Daniel's robot
  DHRobot danielBot = new DHRobot();
  danielBot.drawAt(500, 0, 0.25, 0.25);
  fill(0);
  text("DHRobot", 550, 200);
  
  // Try out Ethan's robot
  EPRobot ethanBot = new EPRobot();
  ethanBot.drawAt(650, 0, 0.25, 0.25);
  fill(0);
  text("EPRobot", 700, 200);
  
  // Try out Ethan's second robot
  EPRobot2 ethanBot2 = new EPRobot2();
  // NOTE: Ask Ethan to fix the following:
  //    1. Robot draws too far over from anchor point
  //
  // If Ethan commits his work, then issues a new pull request, the fixed 
  // code then be distributed to everyone in class.
  //
  ellipse(800, 0, 5, 5); // show anchor point
  ethanBot2.drawAt2(800, 0, 0.25, 0.25);
  fill(0);
  textMode(LEFT);
  text("(draws a bit too far ", 800, 35);
  text(" over from anchor)", 800, 55);
  textMode(CENTER);
  text("EPRobot2", 850, 200);

  
  // ROW TWO of robots... drawing from left to right

  // Try out Jamie's robot
  noFill();
  JSSRobot jamieBot = new JSSRobot();
  jamieBot.drawAt(50, 300, 0.25, 0.25);
  fill(0);
  text("JSSRobot", 50, 450);
  
  // Try out Kern's robot
  KCRobot kernBot = new KCRobot();
  kernBot.drawAt(150, 300, 0.25, 0.25);
  fill(0);
  text("KCRobot", 200, 450);
  
  // Try out Matt's robot
  MCRobot mattBot = new MCRobot();
  mattBot.drawAt(325, 300, 0.25, 0.25);
  fill(0);
  text("MCRobot", 350, 450);

  // Try out Nick's robot
  //
  // NOTE: Ask Nick to fix the following:
  //    1. Robot does not scale correctly.
  //
  // If Nick commits his work, then issues a new pull request, the fixed 
  // code then be distributed to everyone in class.
  //
  //NTRobot nickBot = new NTRobot();
  //nickBot.drawAt(500, 300, 0.25, 0.25);
  textMode(LEFT);
  text("Needs to scale properly; ", 525, 400);
  text("does not do so right now.", 525, 420);
  textMode(CENTER);
  fill(0);
  text("NTRobot", 550, 450);
  
  // Try out Owen's robot
  OBRobot owenBot = new OBRobot();
  owenBot.drawAt(650, 300, 0.25, 0.25);
  fill(0);
  text("OBRobot", 700, 450);
  
  // Try out Spencer's robot
  SCRobot spencerBot = new SCRobot();
  spencerBot.drawAt(825, 275, 1.0, 1.0);
  fill(0);
  text("SCRobot", 850, 450);
  
  // ROW THREE of robots... drawing from left to right

  // Try out Tim's robot
  TMRobots timBot = new TMRobots();
  timBot.drawAt(25, 500, 0.5, 0.5);
  fill(0);
  text("TMRobots", 50, 650);

  // Try out Max's robot
  textMode(LEFT);
  text("Missing; ", 200, 550);
  text("no pull request made.", 200, 570);
  text("Max, see Mr. Gordon.", 200, 590);
  textMode(CENTER);
  fill(0);
  text("MBRobot", 200, 650);
  
  // Try out Eli's robot
  textMode(LEFT);
  text("Missing files; ", 350, 550);
  text("though pull request made.", 350, 570);
  text("Eli, see Mr. Gordon.", 350, 590);
  textMode(CENTER);
  fill(0);
  text("EHRobot", 350, 650);

  // Try out Mike R's robot
  textMode(LEFT);
  text("Missing; ", 525, 550);
  text("no pull request made.", 525, 570);
  text("Mike R, see Mr. Gordon.", 525, 590);
  textMode(CENTER);
  fill(0);
  text("MRRobot", 550, 650);

  // Try out Mike T's robot
  textMode(LEFT);
  text("Missing; ", 675, 550);
  text("no pull request made.", 675, 570);
  text("Mike T, see Mr. Gordon.", 675, 590);
  textMode(CENTER);
  fill(0);
  text("MTRobot", 700, 650);

  // Try out Mr. Gordon's robot
  RGRobot gordonBot = new RGRobot();
  gordonBot.drawAt(825, 500, 0.25, 0.25);
  fill(0);
  text("RGRobot", 850, 650);


} 