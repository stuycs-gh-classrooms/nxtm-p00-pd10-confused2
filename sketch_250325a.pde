//Ashley Li & Sarah Kim
int NUM_ORBS = 10;
int MIN_SIZE = 10;
int MAX_SIZE = 60;
float MIN_MASS = 10;
float MAX_MASS = 100;
float G_CONSTANT = 1;
float D_COEF = 0.1;

int SPRING_LENGTH = 50;
float  SPRING_K = 0.005;

int MOVING = 0;
int GRAVITY = 1;
int SPRINGFORCE = 2;
int DRAGF = 3;
int STICKYF = 4;
int COMBINATION = 5;
boolean[] toggles = new boolean[5];
String[] modes = {"gravity", "spring force", "drag", "sticky force", "combination"};

OrbNode o0, o1, o2, o3;

void setup() {
 size(800, 800); 
 makeOrbs();
}

void makeOrbs() {
  o0 = new OrbNode();
  o1 = new OrbNode();
  o2 = new OrbNode();
  o3 = new OrbNode();
  
  o0.next = o1;
  o1.previous = o0;
  o1.next = o2;
  o2.previous = o1;
  o2.next = o3;
  o3.previous = o2;
}// we should try to automate this later

void draw() {
  toggleDisplay();
}

void keyPressed() {
  if (key == ' ') { toggles[MOVING] = !toggles[MOVING]; }
  if (key == '1') { toggles[GRAVITY] = !toggles[GRAVITY]; }
  if (key == '2') { toggles[DRAGF] = !toggles[DRAGF]; }
  if (key == '3') { toggles[STICKYF] = !toggles[STICKYF]; }
  if (key == 'r') { makeOrbs(); }
}

void toggleDisplay() {
  int txtSz = 27;
  float a = textWidth("gravity")+4;
  float b = textWidth("spring force")+4;
  float c = textWidth("drag")+4;
  float d = textWidth("sticky force")+4;
  float e = textWidth("combination")+4;
  
  /**
  for (int m=0; m<toggles.length; m++) {
    //set box color
    if (toggles[m]) { fill(0, 255, 0); }
    else { fill(255, 0, 0); }
  **/
  
  /**
    float w = textWidth(modes[m]);
    rect(a, 0, w, t);
  **/
  
  //we need to automate the toggle buttons + color change.
  
  fill(255);
  rect(0, 0, a, txtSz); //gravity
  rect(a, 0, b, txtSz); //spring force
  rect(a+b, 0, c, txtSz); //drag
  rect(a+b+c, 0, d, txtSz); //custom force
  rect(a+b+c+d, 0, e, txtSz); //combination      

  textSize(txtSz);
  textAlign(LEFT, TOP);
  fill(0);
  text("gravity", 0+2, 0);
  text("spring force", a+2, 0);
  text("drag", a+b+2, 0);
  text("sticky force", a+b+c+2, 0);
  text("combination", a+b+c+d+2, 0);
}
