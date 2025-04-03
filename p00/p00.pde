//Ashley Li & Sarah Kim
boolean gravity;
boolean spring;
boolean drag;
boolean sticky;
boolean combination;
boolean moving;
boolean bouncing;

int MAX_SIZE = 100;
int MIN_SIZE = 50;
int MAX_MASS = 100;
int MIN_MASS = 20;
int NUM_ORBS = 3;
Orb[] orbs = new Orb[NUM_ORBS];

void setup() {
  size(800, 800);
  gravity = false;
  spring = false;
  drag = false;
  sticky = false;
  combination = false;
  moving = false;
  bouncing = false;
  makeOrbs();
}//setup

void draw() {
  toggleDisplay();
  //displaying all orbs
  for (int i = 0; i < NUM_ORBS; i++) {
    orbs[i].display();
  }
  
}//draw

void makeOrbs() {
  Orb o0 = new Orb(width/2, height/2, 200, 50); //creating fixed orb
  orbs[0] = o0; //storing fixed orb
  //creating non-fixed orbs
  for(int i = 1; i < NUM_ORBS; i++) {
   orbs[i] = new Orb(); 
  }
}

void keyPressed() {
  if (key == '1') {
    println(gravity = !gravity);
  }
  if (key == '2') {
    println(spring = !spring);
  }
  if (key == '3') {
    println(drag = !drag);
  }
  if (key == '4') {
    println(sticky = !sticky);
  }
  if (key == '5') {
    println(combination = !combination);
  }
  if (key == ' ') {
    println(moving = !moving);
  }
  if (key == 'b') {
    println(bouncing = !bouncing);
  }
}//keyPressed

void toggleDisplay() {
  color on = color(0, 255, 0);
  color off = color(255, 0, 0);
  int txtSz = 27;
  //creating strings
  String stra = "gravity";
  String strb = "spring";
  String strc = "drag";
  String strd = "sticky";
  String stre = "combination";
  String strf = "moving";
  String strg = "bouncing";
  //calculating text width
  float a = textWidth(stra)+4; //gravity
  float b = textWidth(strb)+4; //spring
  float c = textWidth(strc)+4; //drag
  float d = textWidth(strd)+4; //custom (sticky)
  float e = textWidth(stre)+4; //combination
  float f = textWidth(strf)+4; //custom (sticky)
  float g = textWidth(strg)+4; //combination

  // toggle box
  if (gravity) {
    fill(on);
  } else {
    fill(off);
  }
  rect(0, 0, a, txtSz); //gravity
  if (spring) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a, 0, b, txtSz); //spring
  if (drag) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a+b, 0, c, txtSz); //drag
  if (sticky) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a+b+c, 0, d, txtSz); //custom (sticky)
  if (combination) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a+b+c+d, 0, e, txtSz); //combination
  if (moving) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a+b+c+d+e, 0, f, txtSz); //moving
  if (bouncing) {
    fill(on);
  } else {
    fill(off);
  }
  rect(a+b+c+d+e+f, 0, g, txtSz); //bouncing

  textSize(txtSz);
  textAlign(LEFT, TOP);
  fill(0);
  text(stra, 0+2, 0);
  text(strb, a+2, 0);
  text(strc, a+b+2, 0);
  text(strd, a+b+c+2, 0);
  text(stre, a+b+c+d+2, 0);
  text(strf, a+b+c+d+e+2, 0);
  text(strg, a+b+c+d+e+f+2, 0);
}//toggleDisplay
