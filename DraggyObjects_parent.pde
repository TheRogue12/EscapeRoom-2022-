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
          myX+=(mouseX-pmouseX);
        if (pmouseX>mouseX)
          myX -= (pmouseX-mouseX);
        if (pmouseY<mouseY)
          myY+= (mouseY-pmouseY);
        if (pmouseY>mouseY)
          myY-= (pmouseY-mouseY);
      }//end if in bounds
    }//end if mousepressed
  }//end draggy
}//end DraggyObject class
