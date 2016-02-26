int scene = 1 ;
float stary = random(1, 699);
float starx = random(1, 999);
//First Tableau
void setup () {
  //Setup canvas size 
  size (1000, 700);
  smooth();
}

void draw () {

  background (50); 

  if (scene == 1) { 
    //Scene 1 

    //Window
    fill (25);   
    strokeWeight (2); 
    stroke (200); 
    rect (400, 200, 600, 300);


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
    fill (255) ;
    //smooth(); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
    ellipse(starx, stary, 5, 5); 
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
}