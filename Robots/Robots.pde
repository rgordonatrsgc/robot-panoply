int scene =1; 
void setup() {
  //make canvas
  size(1000, 700);
}

void draw() {
  //clearing the background 
  background(100);
  
  // draw scene one
  if (scene == 1) {

    //place nemo
    int nemox= 400;
    int nemoy= 300; 
    MCRobot nemobot = new MCRobot();
    nemobot.drawAt(nemox, nemoy, 1.0, 1.0); 
  
    //speach bubble
    fill(255);
    noStroke();
    ellipse(nemox + 300, nemoy + 100, 150, 75);
    //text show up
    fill(0);
    textAlign(CENTER);
    textSize(16);
    text("You are the best dad ever", nemox +300, nemoy +75);
  
    //place nemo dad
    int nemodadx= 100;
    int nemodady= 300;
    BDRobot nemodadbot =new BDRobot();
    nemodadbot.drawAt(nemodadx, nemodady, 0.5, 0.5);
  
    //draw below text
    fill(0);
    textSize(32);
    textAlign(CENTER);
    text("Nemo is happy with his dad.", width/2, height - 25);

  } else if (scene == 2) {    //scene 2

    //place shark 
    int sharkx= 400;
    int sharky= 300;
    DDRobot sharkbot = new DDRobot();
    sharkbot.drawAt(sharkx, sharky, 1.0, 1.0); 
  
    //place nemo
    nemobot.drawAt(nemox, nemoy, 0.5, 0.5);
  
    //draw text below
    fill(0);
    textSize(32);
    textAlign(CENTER);
    text("Nemo gets seperated from his dad by a shark!", width/2, height - 25);
    
  } else if (scene==3) { //scene 3

    //place nemo dad
    nemodadbot.drawAt(nemodadx, nemodady, 1.0, 1.0);
  
    //place nemo
    nemobot.drawAt(nemox, nemoy, 0.5, 0.5);
  
    //place nemo friend
    int nemofriendx= 200;
    int nemofriendy= 300;
    EPRobot nemofriendbot =new EPRobot ();
    nemofriendbot.drawAt(nemofriendx, nemofriendy, 1.5, 1.5);
  
    //place text
    fill(0);
    textSize(32);
    textAlign(CENTER);
    text("Nemo gets back togethar with his dad and friend.", width/2, height - 25);
  }
}
