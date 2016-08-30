int startX = 0;
int startY = 150;
int endX = 300;
int endY = 150;

void setup()
{
  size(300,300);
  background(255);
  strokeWeight(20);
  
}
void draw()
{
	stroke((int)(Math.random()*255));
	while(endX < 300) 
	{
		endX = startX + (int)(Math.random()*9);
		endY = startY + ((int)(Math.random()*9) - 9);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}


}
void mousePressed()
{


}

