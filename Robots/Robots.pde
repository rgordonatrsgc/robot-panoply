// From Mr. Gordon (see suggestions below for comments)
int scene = 1;                          // for changing scenes
int totalStars = 1000;                  // (describe purpose of this variable here)
float[] stary = new float[totalStars]; // stary[0], stary[1], stary[2]... stary[9]
float[] starx = new float[totalStars]; // float[] h = {1, 310, 12412.4824};
int pressed = 0;                       // (describe purpose of this variable here)
int textX = 100;                       // (et cetera)
int textY = 650;

// runs once
void setup () {
  float random = 16;
  random = random(0, 1000);

  int i = 0; //integer i is 0 

  //Setup canvas size 
  size (1000, 700); 
  smooth();
}

// runs repeatedly
void draw () {

  background (60); 

  if (scene == 1) { 
  
    //Window
    fill (25);   
    strokeWeight (2); 
    stroke (200); 
    rect (400, 200, 600, 300);

    // From Mr. G – comment needed
    fill(255); 
    textSize(50); 
    text("'Death Star sighted!' ", textX, textY); 

    // From Mr. G – comment needed
    int i = 0;
    while (i < totalStars/3) {        //While the total stars veariable is less than i, it will run this code again and again. 
      if (pressed == 0) {
        stary[i] = random(202, 498);    //Changes the value of starx[1], starx[2], starx[3], etc... to 
        starx[i] = random(402, 998);
        //println("StarX[" + i + "] = " + int(starx[i]) + "\tStarY[" + i + "] = " + int(stary[i]));
      }
      noStroke();
      fill(255);
      ellipse(starx[i], stary[i], 2, 2); //This draws the ellipse using the starx[i] and stary[i] as the X and Y positions
      i += 1; //This makes the the integer i increase by 1.
    } 
    pressed = 1;
    
    //Scene 1 

    DHRobot danielrobot = new DHRobot (); 
    danielrobot.drawAt (100, 300, 0.5, 0.5); 

    JSSRobot jamiebot = new JSSRobot (); 
    jamiebot.drawAt (400, 325, 0.75, 0.75);

    //Death Star
    ASPRobot adam = new ASPRobot (); 
    adam.drawAt(750, 250, 0.3, 0.3);

    MCRobot d = new MCRobot () ;
    d.drawAt (540, 460, 0.5, 0.5);
    
  } else if (scene == 2) {
  
    //Scene 2
    background(0); 

    fill(255); 
    textSize(50); 
    text("'Destroy the Death Star' ", textX, textY); 

    //stars
    noStroke(); 
    fill (255);

    // From Mr. G – comment needed
    int i = 0; 
    while (i < totalStars) {        //While the total stars veariable is less than i, it will run this code again and again. 
      if (pressed == 0) {
        stary[i] = random(0, 700);    //Changes the value of starx[1], starx[2], starx[3], etc... to 
        starx[i] = random(0, 1000);
      }
      ellipse(starx[i], stary[i], 2, 2); //This draws the ellipse using the starx[i] and stary[i] as the X and Y positions
      i += 1; //This makes the the integer i increase by 1.
    } 
    pressed = 1;

    //background (10); // From Mr. G – remove this if not needed any more

    EHRobot elirobot = new EHRobot ();
    elirobot.drawAt (650, 310, 0.3, 0.3);

    ASPRobot adam = new ASPRobot (); 
    adam.drawAt(425, 180, 0.5, 0.5);

    EPRobot ethan = new EPRobot (); 
    ethan.drawAt(245, 325, 0.3, 0.3); 

    KCRobot kern = new KCRobot (); 
    kern.drawAt(300, 100, 0.3, 0.3) ;

    //laser for Eli's
    strokeWeight (5) ;
    stroke (255, 0, 0);
    line (700, 350, 690, 348);

    //Laser for Ethan's
    line(450, 330, 427, 340); 

    //Laser for Kern's
    line (475, 275, 500, 290); 

    //random number generator
    
  } elseif (scene == 3) {
  
    //Scene 3
    background(0); 
    fill(255); 
    textSize(50); 
    text("'WOHOO' ", textX, textY);

    noStroke(); 
    fill (255);

    int i = 0 ; 
    
    // From Mr. G – comment needed
    while (i < totalStars) { 
      if (pressed == 0) {
        stary[i] = random(0, 701); 
        starx[i] = random(0, 1001);
      }
      ellipse(starx[i], stary[i], 2, 2); 
      i += 1;
    } 
    pressed = 1;

    // From Mr. G – comment needed - what is this block of code for?
    fill(255, 255, 0); 
    ellipse(675, 400, 250, 500); 
    ellipse(675, 500, 250, 500); 
    fill(255, 140, 0); 
    ellipse(675, 400, 220, 450); 
    ellipse(675, 500, 220, 450); 

    // From Mr. G – comment needed
    ASPRobot adam = new ASPRobot (); 
    adam.drawAt(525, 100, 0.5, 1);

    // From Mr. G – comment needed
    EPRobot ethan = new EPRobot (); 
    ethan.drawAt(100, 400, 0.3, 0.3); 

    // From Mr. G – comment needed
    KCRobot kern = new KCRobot (); 
    kern.drawAt(50, 75, 0.3, 0.3) ;

    // From Mr. G – comment needed
    EHRobot elirobot = new EHRobot ();
    elirobot.drawAt (120, 150, 0.3, 0.3);
  }
}

void keyPressed () { 

  scene += 1 ;
  pressed = 0;
  if (scene > 3) {    // I can see what this conditional statement if for, but briefly describe it for others please
    scene = 1 ;
  }
  
}
