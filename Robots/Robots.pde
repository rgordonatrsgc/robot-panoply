int scene = 1 ;
int totalStars = 1000;
float[] stary = new float[totalStars]; // stary[0], stary[1], stary[2]... stary[9]
float[] starx = new float[totalStars]; // float[] h = {1, 310, 12412.4824};
int pressed = 0;
//First Tableau
void setup () {
  float random = 16;
  random = random(0, 1000);

  int i = 0; //integer i is 0 

  //Setup canvas size 
  size (1000, 700); 
  smooth();
}

void draw () {

  background (50); 

  if (scene == 1) { 
    //Window
    fill (25);   
    strokeWeight (2); 
    stroke (200); 
    rect (400, 200, 600, 300);

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
    //stars
    noStroke(); 
    fill (255);

    int i = 0 ; 

    while (i < totalStars) {        //While the total stars veariable is less than i, it will run this code again and again. 
      if (pressed == 0) {
        stary[i] = random(0, 700);    //Changes the value of starx[1], starx[2], starx[3], etc... to 
        starx[i] = random(0, 1000);
      }
      ellipse(starx[i], stary[i], 2, 2); //This draws the ellipse using the starx[i] and stary[i] as the X and Y positions
      i += 1; //This makes the the integer i increase by 1.
    } 
    pressed = 1;

    //background (10); 

    EHRobot elirobot = new EHRobot ();
    elirobot.drawAt (650, 290, 0.5, 0.5);

    ASPRobot adam = new ASPRobot (); 
    adam.drawAt(425, 180, 0.5, 0.5);

    EPRobot ethan = new EPRobot (); 
    ethan.drawAt(245, 325, 0.5, 0.5); 

    KCRobot kern = new KCRobot (); 
    kern.drawAt(200, 75, 0.5, 0.5) ;

    //laser for Eli's
    strokeWeight (5) ;
    stroke (255, 0, 0);
    line (700, 350, 690, 348);

    //Laser for Ethan's
    line(450, 330, 427, 340); 

    //Laser for Kern's
    line (475, 275, 500, 290); 

    //random number generator
  }
}

void keyPressed () { 
  scene += 1 ;
  pressed = 0;
  if (scene > 3) {
    scene = 1 ;
  }
}