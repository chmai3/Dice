  Die bob;
 void setup()
  {
      size(600, 600);
      noLoop();
      
      
  }
  void draw()
  {
      int dNum = 0;
      background((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
      for(int i = 50; i <= 500; i = i+100){
        for(int j = 50; j <= 500; j = j + 100)
        {
          Die bob = new Die(i,j);
          bob.show();
          bob.roll();
          if(bob.dice < 7)
          {
            dNum = dNum + bob.dice;
          }
        }
        
      }
      text("" + dNum, 500,550);
  }
      
      
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, dice;
      Die(int x, int y) //constructor
     {
          myX = x;
          myY = y;

      }
      void roll()
      {
        dice = (int)(Math.random() * 6 + 1);
        if ( dice == 1  )
        {
           dice = 1;
           fill(0);
           ellipse( (myX + 40), (myY + 40), 15, 15); 

       
        }
        if( dice == 2)
        {
       
           fill(0);
           ellipse( (myX + 20), (myY + 20), 15, 15); 
           ellipse( (myX + 60), (myY + 60), 15, 15);
           
        }
        if( dice == 3)
        {
        
           fill(0);
           ellipse( (myX + 20), (myY + 20), 15, 15); 
           ellipse( (myX + 40), (myY + 40), 15, 15);
           ellipse( (myX + 60), (myY + 60), 15, 15);
        
        }
        if( dice== 4)
        {
      
          fill(0);
          ellipse( (myX + 20), (myY + 20), 15, 15); 
          ellipse( (myX + 20), (myY + 60), 15, 15);
          ellipse( (myX + 60), (myY + 20), 15, 15);
          ellipse( (myX + 60), (myY + 60), 15, 15);
   
        }
        if( dice == 5)
        {
    
          fill(0);
          ellipse( (myX + 40), (myY + 40), 15, 15); 
          ellipse( (myX + 20), (myY + 20), 15, 15); 
          ellipse( (myX + 20), (myY + 60), 15, 15);
          ellipse( (myX + 60), (myY + 20), 15, 15);
          ellipse( (myX + 60), (myY + 60), 15, 15);
      
        }
        if ( dice == 6)
        {

          fill(0);
          ellipse( (myX + 20), (myY + 40), 15, 15); 
          ellipse( (myX + 20), (myY + 20), 15, 15); 
          ellipse( (myX + 20), (myY + 60), 15, 15);
          ellipse( (myX + 60), (myY + 20), 15, 15);
          ellipse( (myX + 60), (myY + 40), 15, 15);
          ellipse( (myX + 60), (myY + 60), 15, 15);

        }
            
          
      }
      void show()
      {
     
         fill((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
         rect(myX, myY, 80, 80);
         
         
         }
      }
  
