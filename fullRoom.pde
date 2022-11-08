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
  //floor
  fill(93, 60, 20);
  beginShape();
  vertex(0, 800);
  vertex(300, 350);
  vertex(700, 350);
  vertex(1000, 800);
  endShape(CLOSE);
  //table
  //top
  fill(108, 61, 2);
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
  //shading
  fill(90, 51, 3);
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
  fill(108, 61, 2);
  beginShape();
  vertex(780, 577);
  vertex(794, 350);
  vertex(896, 470);
  vertex(879, 693);
  endShape(CLOSE);
  beginShape();
  vertex(794, 350);
  vertex(896, 470);
  vertex(945, 460);
  vertex(840, 345);
  endShape(CLOSE);
  //sides
  fill(90, 51, 3);
  beginShape();
  vertex(945, 460);
  vertex(896, 470);
  vertex(879, 693);
  vertex(926, 682);
  endShape(CLOSE);
  //drawers
  beginShape();
  vertex(800, 368);
  vertex(890, 472);
  vertex(887, 505);
  vertex(798, 405);
  endShape(CLOSE);
  beginShape();
  vertex(797, 418);
  vertex(885, 518);
  vertex(882, 555);
  vertex(795, 455);
  endShape(CLOSE);
  beginShape();
  vertex(793, 468);
  vertex(881, 568);
  vertex(878, 605);
  vertex(791, 505);
  endShape(CLOSE);
  beginShape();
  vertex(790, 518);
  vertex(876, 618);
  vertex(873, 655);
  vertex(788, 555);
  endShape(CLOSE);

  //door
  fill(108, 61, 2);
  beginShape();
  vertex(439, 350);
  vertex(550, 350);
  vertex(550, 196);
  vertex(440, 196);
  endShape(CLOSE);

  beginShape();
  vertex(730, 393);
  vertex(735, 215);
  vertex(791, 257);
  vertex(780, 470);
  endShape(CLOSE);

  //lock
  noFill();
  strokeWeight(3);
  bezier(444, 300, 444, 280, 465, 280, 465, 300);
  strokeWeight(2);
  fill(100, 100, 100);
  ellipse(455, 285, 15, 15);
  rect(444, 300, 21, 19);
  fill(0);
  strokeWeight(1);
  rect(447, 303, 3, 5);
  rect(453, 303, 3, 5);
  rect(459, 303, 3, 5);
  rect(450, 311, 3, 5);
  rect(456, 311, 3, 5);
}

public void mouseClicked() {
  println(mouseX, mouseY);
}
