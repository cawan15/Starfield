Particle[] stars = new Particle[1000];
Oddball[] ship = new Oddball [5];
void setup()
{
  size(400, 600);
  for (int i = 0; i < stars.length; i++)
  stars [i] = new Particle();
  stars [0] = new Oddball();
}
void draw()
{
  background(0);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].move();
    stars[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle ()
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    mySpeed = Math.random()*6;
    myAngle = Math.random()*2*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move ()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,2,2);
  }
}
class Oddball extends Particle
{
  Oddball (){
    myColor = color(255);
    mySpeed = Math.random()*6;
    myAngle = Math.random()*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move (){
    myX = myX + (int)(Math.cos(mySpeed) + (int)(Math.random()*5)-4);
    myY = myY + (int)(Math.cos(mySpeed) + (int)(Math.random()*5)-4);
  }
  void show (){
    fill(myColor);
    ellipse((float)myX,(float)myY, 20,30);
    fill(102,153,170);
    rect ((float)myX,(float)myY,-15,10);
    
  }
}
