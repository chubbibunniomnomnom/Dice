Die d1 = new Die(20, 20);
void setup()
{
	noLoop();
  size(100, 100);
}
void draw()
{
	background (255);
  d1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int xPos, yPos, rollNum;//variable declarations here
	
	Die(int x, int y) //constructor
	{		
  xPos = x;
  yPos = y;
  //variable initializations here
	}
	void roll(){
    rollNum= (int) (Math.random()*6)+1;
	}
	void show(){
    int 12x = xPos+30;
    int 13x = xPos+20
    int 23x = xPos +40;
    int 14x = xPos+ 15;
    int 34x = xPos+45;
    int 13y = yPos +20;
    int 12y = yPos +30;
    int 23y = yPos +40;
    int 14y = yPos + 15;
    int 34y = yPos +45;
    rect(xPos, yPos, 60, 60, 5);
    if (rollNum == 1){
      ellipse(12x, 12y, 2, 2);
    }
    if (rollNum == 2){
      ellipse(12x,13y, 2,2);
      ellipse(12x, 23y, 2,2);
    }
    if (rollNum == 3){
      ellipse(14x, 14y, 2,2);
      ellipse(12x, 12y, 2,2);
      ellipse(34x, 34y, 2,2);
    }
    if (rollNum == 4){
      ellipse(13x, 13y, 2, 2);
      ellipse(23x, 23y, 2, 2);
      ellipse(23x, 13y, 2, 2);
      ellipse(23x, 23y, 2, 2);
    }
    if (rollNum == 5){
      ellipse(14x, 14y, 2, 2);
      
	}
}
