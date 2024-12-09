Spaceship bob;
Star[] nightSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
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
  for (int i=0; i<20; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i=0; i<nightSky.length; i++) {
    nightSky[i].show();
  }
  for (int i=0; i<asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
    float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)asteroids.get(i).myCenterX, (float)asteroids.get(i).myCenterY);
    if (d < 30) {
      asteroids.remove(i);
    }
  }
  if (wPressed == true) {
    bob.accelerate(0.25);
  }
  if (dPressed == true) {
    bob.turn(5);
  }
  if (aPressed == true) {
    bob.turn(-5);
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
