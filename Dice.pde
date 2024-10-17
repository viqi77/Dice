void setup()
{
  size(500, 500);
  noLoop();
}
  Die bob;
void draw()
{
  background(255, 255, 255);
  int counter=0;
  for(int y=10;y<=300;y+=76){
    for (int x = 10; x <= 450; x +=76){
  bob=new Die(x,y);
  bob.show();//your code here
  counter+=bob.numRoll;
    }
  }
  textSize(20);
  fill(0,0,0); 
  text("Total counter: "+ counter, 250,770);
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
    numRoll=(int)(Math.random()*8)+2;//your code here
  }
  void show()
  {
    fill(25, 210, 200);
    rect(myX,myY,40,60,12,12,12,12);
    stroke(0);
    int v=(int)(Math.random()*256);
        int q=(int)(Math.random()*256);
    int i=(int)(Math.random()*256);
if (numRoll==1){
  fill(v,q,i);
  ellipse(myX+20,myY+30,10,10);
}
else if (numRoll==2){
  fill(v,q,i);
    ellipse(myX+35,myY+25,10,10);
      ellipse(myX+40,myY+530,10,10);
}
else if (numRoll==3){
  fill(v,q,i);
    ellipse(myX+15,myY+20,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+30,myY+35,10,10);
}
      else if (numRoll==4){
  fill(v,q,i);
    ellipse(myX+25,myY+30,10,10);
      ellipse(myX+35,myY+40,10,10);
      ellipse(myX+30,myY+40,10,10);
            ellipse(myX+20,myY+30,10,10);
 }
 else if (numRoll==5){
  fill(v,q,i);
    ellipse(myX+25,myY+30,10,10);
      ellipse(myX+35,myY+40,10,10);
      ellipse(myX+20,myY+10,10,10);
            ellipse(myX+20,myY+20,10,10);
                        ellipse(myX+30,myY+20,10,10);
 }
 else{
   fill(v,q,i);
     ellipse(myX+35,myY+30,10,10);
     ellipse(myX+15,myY+20,10,10);
     ellipse(myX+20,myY+30,10,10);
     ellipse(myX+30,myY+20,10,10);
     ellipse(myX+35,myY+25,10,10);
 }
  }
}

