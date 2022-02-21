// Quiz 2 - Hyewon_Kim

Triangle ta;

PImage img;
float angle = 100;
float aVelocity = 0.03;
float aAcceleration = 0.00001;

void setup(){
  size(900,700,P2D);
  smooth();
  img = loadImage("back.jpg");
  
  ta = new Triangle(new PVector(width/2, 200));
}

void draw(){
  image(img,0,0);
  
//old
  ta.run();
  
  fill(82, 255, 246);
  ellipse(280,160,120,140);
  
//parents
  fill(255, 103, 77);
  rect(90,300,100,100);
  fill(255,255,255);
  rect(100,340,30,30);
  rect(170,380,10,10);
  rect(150,320,30,30);
  
  fill(173, 173, 173);
  ellipse(280,340,90,120);
  
  fill(255, 132, 0);
  rect(540,300,100,100);

//child
  fill(149, 0, 255);
  ellipse(120,530,90,120);
  
  fill(149, 0, 255);
  rect(230,480,100,100);
  
    fill(252, 233, 61);
  ellipse(420,530,90,120);
  
    fill(252, 233, 61);
  ellipse(540,530,90,120);
  
    fill(252, 233, 61);
  ellipse(680,530,90,120);
  
    fill(252, 233, 61);
    rotate(angle);
  ellipse(300,300,90,120);
  
  aVelocity = aVelocity + aAcceleration;
  angle = angle + aVelocity;

  if (angle > 102) {
    aVelocity *= -2;
  }
  noStroke();
}

//////////// Class Particle ////////////////

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Particle(PVector l){
    acceleration = new PVector(0, 0.08);
    velocity = new PVector(random(-2, 2), random(-3, 0));
    location = l.get();
  }
void run() {
    update();
    display();
  }
  
void update(){
    velocity.add(acceleration);
    location.add(velocity);
    
    if(location.x >= width -10 || location.x <= 10) {
      velocity.x *= -1;
    }
    if(location.y >= height -10) {
      velocity.y *= -1;
    }
     if (location.y > height + 1) {
      location.y = location.y - height /2;
    }  
  }

void display() {
    fill(0);
  }
}

///////////////// Class Triangle ////////////////////

class Triangle extends Particle {
  Triangle(PVector l) {
    super(l);
  }
  
  void display() {
    float theta = map(location.y, 0, height, 0, TWO_PI * 2);
    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);
    fill(173, 173, 173);
    triangle(-80, 80, 10, -80, 80, 80);
    popMatrix();
  }
}

///////////////// Class Polygon ///////////////////

class Polygon extends Particle {
  Polygon(PVector l) {
    super(l);
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
