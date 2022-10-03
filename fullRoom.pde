public void setup() {
  size(1000, 800);
  background(65, 40, 0);
  stroke(0);
}

public void draw() {
  //room outline
  background(65, 40, 0);
  stroke(0);
  strokeWeight(3);
  line(0, 800, 300, 350);
  line(1000, 800, 700, 350);
  strokeWeight(2);
  line(300, 350, 700, 350);
  line(300, 350, 300, 0);
  line(700, 350, 700, 0);
  //table
  //top
  fill(100, 70, 20);
  beginShape();
  vertex(60, 640);
  vertex(180, 475);
  vertex(310, 485);
  vertex(210, 655);
  endShape(CLOSE);
  strokeWeight(1);
  beginShape();
  vertex(60, 640);
  vertex(60, 650);
  vertex(210, 665);
  vertex(210, 655);
  endShape(CLOSE);
  //sides
  beginShape();
  vertex(210, 666);
  vertex(210, 655);
  vertex(310, 485);
  vertex(310, 495);
  endShape(CLOSE);
  //outline
  strokeWeight(2);
  line(60, 640, 60, 650);
  line(60, 650, 210, 665);
  line(210, 665, 310, 495);
  line(310, 495, 310, 485);
  //legs
  beginShape();
  vertex(73, 651);
  vertex(100, 654);
  vertex(101, 733);
  vertex(85, 730);
  endShape(CLOSE);
  beginShape();
  vertex(172, 661.5);
  vertex(201, 664);
  vertex(198, 742);
  vertex(180, 740);
  endShape(CLOSE);
  beginShape();
  vertex(294, 599);
  vertex(300, 585);
  vertex(305, 504); 
  vertex(298, 519);
  endShape(CLOSE);


  fill(87, 62, 20);
  beginShape();
  vertex(101, 732);
  vertex(110, 715);
  vertex(113, 656);
  vertex(100, 654);
  endShape(CLOSE);
  beginShape();
  vertex(198, 741);
  vertex(205, 724);
  vertex(211, 664);
  vertex(201, 664);
  endShape(CLOSE);
  beginShape();
  vertex(278, 551);
  vertex(297, 518);
  vertex(294, 600);
  vertex(282, 600);
  endShape(CLOSE);
  
  //wardrobe
  fill(100, 70, 20);
  beginShape();
  vertex(780, 577);
  vertex(794, 350);
  vertex(896, 470);
  vertex(875, 720);
  endShape(CLOSE);
  beginShape();
  vertex(794, 350);
  vertex(896, 470);
  vertex(945, 445);
  vertex(845, 340);
  endShape(CLOSE);
  fill(87, 62, 20);
  beginShape();
  vertex(945, 445);
  vertex(896, 470);
  vertex(875, 720);
  vertex(920, 700);
  endShape(CLOSE);
}

public void mouseClicked(){
  println(mouseX, mouseY);
}
