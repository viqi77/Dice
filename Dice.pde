void setup()
{
  size(600, 600);
  noLoop();
}
  Die bob;
void draw()
{
  background(255, 255, 255);
  int counter=0;
  for(int y=10;y<=600;y+=100){
    for (int x = 20; x <= 600; x +=100){
  bob=new Die(x,y);
  bob.show();//your code here
  counter+=bob.numRoll;
    }
  }
  textSize(30);
  fill(252,241,5); 
  text("Total counter: "+ counter, 180,500);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numRoll;
  int myX; 
  int myY;
 //member variable declarations here
  Die(int x, int y) //constructor
  {
   roll();
    myX=x;
    myY=y;//variable initializations here
  }
  void roll()
  {
    numRoll=(int)(Math.random()*6)+2;//your code here
  }
  void show()
  {
    fill(245, 188, 231);
    rect(myX,myY,50,60,12,12,12,12);
    stroke(0);
    int v=(int)(Math.random()*256);
        int q=(int)(Math.random()*256);
    int i=(int)(Math.random()*256);
if (numRoll==1){
  fill(v,q,i);
  ellipse(myX+25,myY+30,10,10);
}
else if (numRoll==2){
  fill(v,q,i);
    ellipse(myX+15,myY+20,10,10);
      ellipse(myX+35,myY+40,10,10);
}
else if (numRoll==3){
  fill(v,q,i);
    ellipse(myX+15,myY+20,10,10);
      ellipse(myX+25,myY+30,10,10);
      ellipse(myX+35,myY+40,10,10);
}
      else if (numRoll==4){
  fill(v,q,i);
    ellipse(myX+15,myY+20,10,10);
      ellipse(myX+35,myY+20,10,10);
      ellipse(myX+15,myY+40,10,10);
            ellipse(myX+35,myY+40,10,10);
 }
 else if (numRoll==5){
  fill(v,q,i);
    ellipse(myX+15,myY+20,10,10);
      ellipse(myX+35,myY+20,10,10);
      ellipse(myX+25,myY+30,10,10);
            ellipse(myX+15,myY+40,10,10);
                        ellipse(myX+35,myY+40,10,10);
 }
 else{
   fill(v,q,i);
     ellipse(myX+15,myY+20,10,10);
     ellipse(myX+35,myY+20,10,10);
     ellipse(myX+15,myY+30,10,10);
     ellipse(myX+35,myY+30,10,10);
     ellipse(myX+15,myY+40,10,10);
     ellipse(myX+35,myY+40,10,10);
 }
  }
}
