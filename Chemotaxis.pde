Dice[] pop = new Dice[100];
void setup()
{
  size(500,500);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i] = new Dice();
  }
} 
void draw()
{
  background(20,20,20);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i].rise();
    pop[i].show();
  }
}


class Dice
{
  float mySize;
  float myX;
  float num;
  float myY;
  float mySpeed;
  {
    
    roll();
    mySize = (int)(Math.random()*80)+20;
    mySpeed =-mySize/25;
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    
  }
  void roll()
      {
          num = (int)(Math.random()*6);
     
       
      }
  void rise()
  {
    myY = myY - mySpeed;
    myY = myY +(int)(Math.random()*3);
    myX = myX +(int)(Math.random()*6)-3;
    if(myY > 600)
    {
      myY = -100;
      
    }
    if(myX < -100)
    {
      myX = 600;
      
    }
  }
  void show()
      {
        
        fill(300,300,300);
        rect(myX,myY,mySize,mySize);
        fill(0,0,0);
        if (num == 1)
        {  
          ellipse(myX+(mySize/2),myY+(mySize/2),mySize/5,mySize/5);
        }
      else if (num == 2)
        {  
          ellipse(myX+(mySize/4),myY+(mySize/4),mySize/5,mySize/5); 
          ellipse(myX+(3*(mySize)/4),myY+(3*(mySize)/4),mySize/5,mySize/5);
        }
        else if (num == 3)
        {  
          ellipse(myX+(mySize/4),myY+(mySize/4),mySize/5,mySize/5); 
          ellipse(myX+(3*(mySize)/4),myY+(3*(mySize)/4),mySize/5,mySize/5);
          ellipse(myX+(mySize/2),myY+(mySize/2),mySize/5,mySize/5);
          
        }
        else if (num == 4)
        {  
          ellipse(myX+(mySize/4),myY+(mySize/4),mySize/5,mySize/5); 
          ellipse(myX+(mySize/4),myY+(3*(mySize)/4),mySize/5,mySize/5);      
          ellipse(myX+(3*(mySize)/4),myY+(3*(mySize)/4),mySize/5,mySize/5);
          ellipse(myX+(3*(mySize)/4),myY+(mySize/4),mySize/5,mySize/5);
        }
        else if (num == 5)
        {  
          ellipse(myX+(mySize/4),myY+(mySize/4),mySize/5,mySize/5); 
          ellipse(myX+(mySize/4),myY+(3*(mySize)/4),mySize/5,mySize/5);      
          ellipse(myX+(3*(mySize)/4),myY+(3*(mySize)/4),mySize/5,mySize/5);
          ellipse(myX+(3*(mySize)/4),myY+(mySize/4),mySize/5,mySize/5);
          ellipse(myX+(mySize/2),myY+(mySize/2),mySize/5,mySize/5);
        }
        else
        {  
          ellipse(myX+(mySize/4),myY+(mySize/2),mySize/5,mySize/5); 
          ellipse(myX+(3*(mySize)/4),myY+(mySize/2),mySize/5,mySize/5); 
          ellipse(myX+(mySize/4),myY+(mySize/4),mySize/5,mySize/5); 
          ellipse(myX+(mySize/4),myY+(3*(mySize)/4),mySize/5,mySize/5);      
          ellipse(myX+(3*(mySize)/4),myY+(3*(mySize)/4),mySize/5,mySize/5);
          ellipse(myX+(3*(mySize)/4),myY+(mySize/4),mySize/5,mySize/5);
        }
          
        
        
        
        
      }
}
