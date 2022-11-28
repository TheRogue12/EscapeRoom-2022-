//to do: move eyeball holders on top of flashlight filter

PFont font1;
PFont font2;
DraggyObjects [] lissy = new DraggyObjects[6];
Lamp flashlight = new Lamp();
void setup() {
  size(1000, 800);
  font1 = loadFont("HoeflerText-Italic-48.vlw");
  font2 = loadFont("Wingdings-Regular-48.vlw");
  lissy[0] = new Eyeball(400, 400, 80, 50, 850, 685, color(255, 136, 15));
  lissy[1] = new Eyeball(300, 200, 80, 50, 750, 685, color(150, 70, 180));
  lissy[2] = new Eyeball(600, 600, 80, 50, 650, 685, color(50, 90, 60));
  lissy[3] = new Book (200,200);
  lissy[4] = new Paper1(500, 400);
  lissy[5] = new Paper2(800,200);

}//end setup
void draw(){
  background(35, 25, 25);
  fill(108,61,2);
  rect(100, 80, 800, 720*(8.0/9));
 
  for (int i = 0; i<lissy.length;i++){
    lissy[i].show();
    lissy[i].draggy();
  }//end for
  flashlight.show();
  flashlight.move();
}//end draw

//class definitions below
class DraggyObjects {
  int myX, myY, myWidth, myHeight;
  DraggyObjects() {
  }
 void show(){
   
 }
  boolean onObject() {//checks if mouse is on the object
    if ((mouseX<myX+myWidth)&&(mouseX>myX)&&(mouseY<myY+myHeight)&&(mouseY>myY))
      return true;
    else
      return false;
  }//end onObject

  void draggy() {
    if (mousePressed) {
      if (onObject()) {
        if (pmouseX<mouseX && myX<850)
          myX+=2;
        if (pmouseX>mouseX && myX>150)
          myX -= 2;
        if (pmouseY<mouseY && myY < 700)
          myY+=2;
        if (pmouseY>mouseY && myY > 100)
          myY-=2;
      }//end if in bounds
    }//end if mousepressed
  }//end draggy
}//end DraggyObject class

class Book extends DraggyObjects{
    Book(int x, int y){
    myX = x;
    myY = y;
    myWidth = 200;
    myHeight = 250;
  }//end constructor
void show() {
    textFont(font1, 30);
    fill(70, 58, 58);
    rect(myX, myY, myWidth, myHeight);
    fill(255, 255, 220);
    triangle(myX, myY, myX+180, myY-20, myX+185, myY);
    triangle(myX, myY, myX+185, myY-15, myX+185, myY);
    triangle(myX, myY, myX+188, myY-10, myX+188, myY);
    text("book of mysterious things", myX+40, myY+40, 150, 250);
  }//end show 
}

class Eyeball extends DraggyObjects{
  int myColor,finalX,finalY;
  Eyeball(int x, int y, int w, int h, int fx, int fy, color c) {
    //initialize myColor here
    myX = x;
    myY = y;
    myWidth = w;
    myHeight = h;
    finalX= fx;
    finalY = fy;
    myColor = c;
  }//end constructor
  void show() {
    //background eyeball color
    fill(250, 240, 230);
    ellipse(myX, myY, myWidth, myHeight);
    //iris
    fill(myColor);
    ellipse(myX, myY, 25, myHeight);
    //pupil
    fill(0);
    ellipse(myX, myY, 5, myHeight-30);
    //final ellipse stuff
    noFill();
    stroke(myColor);
    strokeWeight(3);
    ellipse(finalX, finalY, myWidth, myHeight);
    //reset default values for below
    stroke(0);
    strokeWeight(1);
  }//end show
    boolean isFound() {
    if ((finalX-5<myX)&&(myX<finalX+5)&&(finalY-5<myY)&&(myY<finalY+5)) {
      myX=finalX;
      myY=finalY;
      return true;
    }
    return false;
  }//end isFound
   boolean onObject() {//repeated from parent bc need to check isFound
    if ((mouseX<myX+myWidth/2)&&(mouseX>myX-myWidth/2)&&(mouseY<myY+myHeight/2)&&(mouseY>myY-myHeight/2)&&(isFound()==false))
      return true;
    else
      return false;
  }//end onObject
  
}

class Lamp extends DraggyObjects{
  int myX,myY;
  Lamp(){
    myX = 500;
    myY = 400;
  }
  
  void show(){
    fill(0,0,0,220);
    noStroke();
    beginShape();
    vertex(myX-800,myY-640);
    vertex(myX+800,myY-640);
    vertex(myX+800,myY+640);
    vertex(myX-800,myY+640);
    vertex(myX-800,myY);
    vertex(myX-140,myY);
    vertex(myX-140,myY+28);
    vertex(myX-28,myY+140);
    vertex(myX+140,myY+140);
    vertex(myX+140,myY-140);
    vertex(myX-140,myY-140);
    vertex(myX-140,myY);
    vertex(myX-800,myY);
    vertex(myX-800,myY-640);
    endShape();
  }
 /* 
  boolean inBounds(){
    //check if on the table
    
  }
  */
  void move(){
    if (keyPressed){
      if (key== CODED){
        if (keyCode == UP && myY>170)
          myY-=2;
        if (keyCode == DOWN && myY<620)
          myY+=2;
        if (keyCode == LEFT && myX>200)
          myX-=2;
        if (keyCode == RIGHT && myX<800)
          myX+=2;
    }//end if coded  
  }//end if keypressed
}//end move
}//end class

class Paper1 extends DraggyObjects{
    Paper1(int x, int y) {
    myX = x;
    myY = y;
    myWidth = 150;
    myHeight = 200;
  }
  void show() {
    fill(255, 255, 200);
    quad(myX, myY, myX+myWidth, myY, myX+myWidth, myY+myHeight, myX, myY+myHeight);
    fill(230, 230, 180);
    quad(myX+15, myY-20, myX+myWidth+15, myY+20, myX+myWidth-15, myY+myHeight+20, myX-15, myY+myHeight-20);
    fill(250, 250, 190);
    quad(myX-20, myY+20, myX+myWidth-20, myY-20, myX+myWidth+20, myY+myHeight-20, myX+20, myY+myHeight+20);
    fill(230, 215, 150);
    quad(myX-30, myY+5, myX+myWidth-25, myY, myX+myWidth+25, myY+myHeight, myX+20, myY+myHeight);
    fill(80, 75, 60);
    textFont(font2, 30);
    text("seirgaiqeruoygouygwdghyhe", myX+10, myY+40, 125, 125);
  }//end show 
}//end class definition

class Paper2 extends DraggyObjects{
  Paper2(int x, int y) {
    myX = x;
    myY = y;
    myWidth = 150;
    myHeight = 200;
  }
   void show() {
    fill(230, 230, 180);
    quad(myX+15, myY-20, myX+myWidth+15, myY+20, myX+myWidth-15, myY+myHeight+20, myX-15, myY+myHeight-20);
    fill(250, 250, 190);
    quad(myX-20, myY+20, myX+myWidth-20, myY-20, myX+myWidth+20, myY+myHeight-20, myX+20, myY+myHeight+20);
    fill(230, 215, 150);
    quad(myX-30, myY+5, myX+myWidth-25, myY, myX+myWidth+25, myY+myHeight, myX+20, myY+myHeight);
    fill(255, 255, 200);
    quad(myX, myY, myX+myWidth, myY, myX+myWidth, myY+myHeight, myX, myY+myHeight);
    fill(80, 75, 60);
    textFont(font2, 30);
    text("mgjsndhyeinshqyeoplicudns", myX+10, myY+40, 125, 125);
  }//end show 
}//end class definition
