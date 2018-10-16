Particle [] Fireworks;
void setup()
{
  size(800,800);
  Fireworks = new Particle[500];
  for (int i = 0; i < Fireworks.length; i++)
  {
    Fireworks[i] = new NormalParticle();
    Fireworks[0] = new OddballParticle(100,250);
    Fireworks[2] = new OddballParticle(150,200);
    Fireworks[3] = new OddballParticle(200,250);
    Fireworks[4] = new OddballParticle(150,300);
    Fireworks[5] = new OddballParticle(0,100);
    Fireworks[6] = new OddballParticle(50,50);
    Fireworks[7] = new OddballParticle(100,100);
    Fireworks[8] = new OddballParticle(0,0);
    Fireworks[9] = new OddballParticle(100,0);
    Fireworks[1] = new JumboParticle();
  }
}
void draw()
{
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  for (int i = 0; i < Fireworks.length; i++)
  {
    Fireworks[i].show();
    Fireworks[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  NormalParticle()
  {
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)); //epilpsey 101
    myX = 250;
    myY = 250;
    mySpeed = (Math.random()*25);
    myAngle = (Math.random()*(4*Math.PI));
  }
  public void move()
  {
    myX = myX + (Math.cos(myAngle)*(mySpeed));
    myY = myY + (Math.sin(myAngle)*(mySpeed));
  }
  public void show()
  {
    fill(myColor);
    ellipse((float) myX,(float) myY,15,15);
  }
}
void mousePressed()
{
  for(int i = 0; i < Fireworks.length; i ++)
  {
    Fireworks[i] = new NormalParticle();
    Fireworks[0] = new OddballParticle(100,250);
    Fireworks[2] = new OddballParticle(150,200);
    Fireworks[3] = new OddballParticle(200,250);
    Fireworks[4] = new OddballParticle(150,300);
    Fireworks[5] = new OddballParticle(0,100);
    Fireworks[6] = new OddballParticle(50,50);
    Fireworks[7] = new OddballParticle(100,100);
    Fireworks[8] = new OddballParticle(0,0);
    Fireworks[9] = new OddballParticle(100,0);    
    Fireworks[1] = new JumboParticle();
  }
  for(int i = 0; i < Fireworks.length; i ++)
  {
    Fireworks[i].show();
    Fireworks[i].move();
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myX2, myY2;
  OddballParticle(int x, int y)
  {
    myX2 = x;
    myY2 = y;
  }
  public void move()
  {
    myX2 = myX2 + 10;
    myY2 = myY2 + 10;
  }
  public void show()
  {
    fill(0,0,255);
    rect(myX2,myY2,50,50);
  }
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    fill(0);
    ellipse((float)myX,(float)myY,100,100);
  }
}
