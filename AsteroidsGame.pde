Spaceship bob;
Star[] nightSky = new Star[200];
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;
public void setup() 
{
  size(800, 800);
  background(0);
  bob = new Spaceship(width/2, height/2);
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
background(0);
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i].show();
  }
  if (wPressed == true) {
    bob.accelerate(0.5);
  }
  if (dPressed == true) {
    bob.turn(10);
  }
  if (aPressed == true) {
    bob.turn(-10);
  }
  bob.show();
  bob.move();
}

public void keyPressed() {
  if (key == 'w' || key == 'W') {
    wPressed = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
  }
  if (key == 'a' || key == 'A') {
    aPressed = true;
  }
  if (key == 'r' || key == 'R') {
     bob.setCenterX(Math.random()*600);
    bob.setCenterY(Math.random()*600);
    bob.turn(Math.random()*361);
    bob.setXspeed(0);
    bob.setYspeed(0);
  }
}

public void keyReleased() {
  if (key == 'w' || key == 'W') {
    wPressed = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
  }
  if (key == 'a' || key == 'A') {
    aPressed = false;
  }
}
