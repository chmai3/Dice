 Die bob;
 void setup()
  {
      size(600, 600);
      noLoop();
      textAlign(500,550);
  }
  void draw()
  {
      int dice = 0;
      background((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
      for(int i = 50; i <= 500; i = i+100){
        for(int j = 50; j <= 500; j = j + 100)
        {
          Die bob = new Die(i,j);
          bob.show();
          bob.roll();
          
        }
      }
      text("Total Number of Dots: " + dice, 300, 550);
      
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int dice;
      int myX, myY;
      Die(int x, int y) //constructor
     {
       roll();   
       myX = x;
       myY = y;

      }
      void roll()
      {
     
        int total = (int)(Math.random() * 6 + 1);
        
        if ( total == 1  )
        {
           dice = 1;
           fill(0);
           ellipse( (myX + 40), (myY + 40), 15, 15); 

       
        }
        if( total == 2)
        {
           dice = 2;
           fill(0);
           ellipse( (myX + 20), (myY + 20), 15, 15); 
           ellipse( (myX + 60), (myY + 60), 15, 15);
           
        }
        if( total == 3)
        {
           dice = 3;
           fill(0);
           ellipse( (myX + 20), (myY + 20), 15, 15); 
           ellipse( (myX + 40), (myY + 40), 15, 15);
           ellipse( (myX + 60), (myY + 60), 15, 15);
        
        }
        if( total== 4)
        {
          dice = 4;
          fill(0);
          ellipse( (myX + 20), (myY + 20), 15, 15); 
          ellipse( (myX + 20), (myY + 60), 15, 15);
          ellipse( (myX + 60), (myY + 20), 15, 15);
          ellipse( (myX + 60), (myY + 60), 15, 15);
   
        }
        if( total == 5)
        {
          dice = 5;
          fill(0);
          ellipse( (myX + 40), (myY + 40), 15, 15); 
          ellipse( (myX + 20), (myY + 20), 15, 15); 
          ellipse( (myX + 20), (myY + 60), 15, 15);
          ellipse( (myX + 60), (myY + 20), 15, 15);
          ellipse( (myX + 60), (myY + 60), 15, 15);
      
        }
        if ( total == 6)
        {
          dice = 6;
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
  
