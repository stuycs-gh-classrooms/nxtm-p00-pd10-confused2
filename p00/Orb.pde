class Orb {

  //instance variables
  PVector center;
  PVector velocity;
  PVector acceleration;
  float bsize;
  float mass;
  color c;

  Orb() {
     bsize = random(10, MAX_SIZE);
     float x = random(bsize/2, width-bsize/2);
     float y = random(bsize/2, height-bsize/2);
     center = new PVector(x, y);
     mass = random(10, 100);
     velocity = new PVector();
     acceleration = new PVector();
  //   setColor();
  }

  Orb(float x, float y, float s, float m) {
     bsize = s;
     mass = m;
     center = new PVector(x, y);
     velocity = new PVector();
     acceleration = new PVector();
    // setColor();
   }

  //movement behavior
  void move(boolean bounce) {
    if (bounce) {
    //  xBounce();
    //  yBounce();
    }

    velocity.add(acceleration);
    center.add(velocity);
    acceleration.mult(0);
  }//move

/*
PVector getStickyForce(float q1, float q2, float r) {
 float kConstant = 8.99 * pow(10, 9);
 return kConstant * (q1*q2) / pow(r, 2);
// return(new PVector(0.0,0.0));
}//getStickyForce
*/ 
}//Ball
