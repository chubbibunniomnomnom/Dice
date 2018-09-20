
void setup()
{
	noLoop();
  size(500, 500);
}
void draw()
{
	background (47, 104, 196);
  int sum = 0;
  for (int c = 20; c<500; c = c+100){
    for (int ys = 40; ys<300; ys = ys+100){
      Die d = new Die(c, ys);
      d.roll();
      d.show();
      sum = sum + d.rollNum;
    }
  }
  textSize(30);
  fill(0);
  text("TOTAL: " + sum, 170, 440);
  if (mousePressed == true){
  }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int xPos, yPos, rollNum;//variable declarations here
	int hx,tx,ttx,fx,tfx,ty,hy,tty,fy,tfy; 
	Die(int x, int y) //constructor
	{		
  xPos = x; 
  yPos = y;
  hx = xPos+30; // 1/2x
  tx = xPos+20; // 1/3x
  ttx = xPos +40; // 2/3x
  fx = xPos+ 15; // 1/4x
  tfx = xPos+45; // 3/4x
  ty = yPos +20; // 1/3y
  hy = yPos +30; // 1/2y
  tty = yPos +40; // 2/3y
  fy = yPos + 15; // 1/4y
  tfy = yPos +45; // 3/4y
	}
	void roll(){
    rollNum = (int)(Math.random()*6)+1;
	}
	void show(){
    fill(255);
    rect(xPos, yPos, 60, 60, 5);
    fill(0);
    if (rollNum == 1){
      ellipse(hx, hy, 4, 4);
    }
    if (rollNum == 2){
      ellipse(hx, ty, 4, 4);
      ellipse(hx, tty, 4, 4);
    }
    if (rollNum == 3){
      ellipse(fx, fy, 4, 4);
      ellipse(hx, hy, 4, 4);
      ellipse(tfx, tfy, 4, 4);
    }
    if (rollNum == 4){
      ellipse(tx, ty, 4, 4);
      ellipse(ttx, tty, 4, 4);
      ellipse(ttx, ty, 4, 4);
      ellipse(tx, tty, 4, 4);
    }
    if (rollNum == 5){
      ellipse(fx, fy, 4, 4);
      ellipse(tfx, fy, 4, 4);
      ellipse(hx, hy, 4, 4);
      ellipse(fx, tfy, 4, 4);
      ellipse(tfx, tfy, 4, 4);
    }
    if (rollNum == 6){
      ellipse(tx, fy, 4, 4);
      ellipse(tx, hy, 4, 4);
      ellipse(tx, tfy, 4, 4);
      ellipse(ttx, fy, 4, 4);
      ellipse(ttx, hy, 4, 4);
      ellipse(ttx, tfy, 4, 4);
    }
      
	}
}
