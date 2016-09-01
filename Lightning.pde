int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int cirX = 150;
int cirY = 25;
int radiusX = 150;
int radiusY = 50;
int houseX = 0;
int houseY = 250;
int houseHW = 50;

void setup()
{
  size(300,300);
  strokeWeight(3);
}

void draw()
{
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	
	background(102,106,114);
	
	while(endY < 300) 
	{
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		endY = startY + (int)(Math.random()*9);
		endX = startX + ((int)(Math.random()*18) - 9);
		
	}

	cloud();
	houses();
}

void cloud() {
	fill(255);
	ellipse(cirX,cirY,radiusX,radiusY);
}

void houses()
{
	fill((int)(Math.random()*255));
	rect(houseX,houseY,houseHW,houseHW);
}

void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}


