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
        if (pmouseX<mouseX)
          myX+=2;
        if (pmouseX>mouseX)
          myX -= 2;
        if (pmouseY<mouseY)
          myY+=2;
        if (pmouseY>mouseY)
          myY-=2;
      }//end if in bounds
    }//end if mousepressed
  }//end draggy
}//end DraggyObject class
