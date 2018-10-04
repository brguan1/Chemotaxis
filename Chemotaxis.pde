Bacteria [] colony;
int i;
int z = 1000000;
int q = 8;
 void setup()
 {     
 	size(600, 600);
 	colony = new Bacteria[z];
 	for (i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria(); 
  }
 }   
 void draw()   
 {    
 	background(0);
 	for (i = 0; i < q; i++)
  {
    colony[i].show();
    colony[i].walk();
  } 
  if (get(mouseX,mouseY) != color(0,0,0))
   	{
   		q=q+1;
    }
 }  
 void keyPressed()
 {
 	redraw();
 }
 void mousePressed()
 {
 	if (mousePressed)
 	{
 		for (i = (int)(Math.random()*2); i < q; i+=2)
  		{
  			colony[i].x2 = 0;
  			colony[i].y2 = 0;
  		}
  		i = 0;
 	}
 }
 class Bacteria    
 {     
 	int x2, y2, myX, myY, art, art1, art2;
 	Bacteria()
 	{
 		myX = (int) (Math.random()*301)+150;
 		myY = (int) (Math.random()*301)+150;
 		art = (int)(Math.random()*225)+1;
 		art1 = (int)(Math.random()*225)+1;
 		art2 = (int)(Math.random()*225)+1; 
 		x2 = 50;
 		y2 = 50;
 	}  
 	void show()
 	{
 		fill(art,art1,art2);
 		ellipse(myX,myY,x2,y2);
 	}
 	void walk()
 	{
 		myX= myX + (int) (Math.random()*7)-3;
 		myY= myY + (int) (Math.random()*7)-3;
 	}
 }    