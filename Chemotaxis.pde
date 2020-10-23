Bubble[] pop = new Bubble[100];
void setup()
{
  size(400,400);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i] = new Bubble();
  }
} 
void draw()
{
  background(255);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i].rise();
    pop[i].show();
  }
}


class Bubble
{
  int myColor;
  int mySize;
  int myX;
  float myY;
  float mySpeed;
  {
    
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySize = (int)(Math.random()*80)+20;
    mySpeed =mySize/100.0;
    myX=(int)(Math.random()*400);
    myY=(int)(Math.random()*400);
    
  }
  void rise()
  {
    myY = myY - mySpeed;
    myY = myY +(int)(Math.random()*3)-1;
    if(myY < -100)
    {
      myY = 500;
      
    }
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}
