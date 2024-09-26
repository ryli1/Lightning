//Lightning
/*IDEA: Make moving cloud, when mouse is clicked, draw lightning 
 originating from the cloud
 IDEA 2: Draw some stars that follow the path of a curve?*/

int startX = (int)(Math.random()*500);
int endX = (startX + ((int)(Math.random()*9)));
int startY = 0;
int endY = 50;

void setup() {
  size(500, 500);
  background(32, 49, 82, 255);
  //cloud();
  //noLoop();
  frameRate(50);
}

void draw() {
  noStroke();
  fill(32, 49, 82, 20);
  rect(0, 0, 500, 500);
  strokeWeight(8);
  stroke(#FFFFFF, 150);
  line(startX, startY, endX, endY);
  strokeWeight(3);
  stroke(#FFFFFF);
  line(startX, startY, endX, endY);
  if ((int)(Math.random()*5) == 0) {
    lightningBranch(startX, startY);
  }
  startX = endX;
  startY = endY;
  endX += (int)(Math.random()*60-35);
  if (endX <= 0) {
    endX += 20;
  } else if (endX >= 500) {
    endX -= 20;
  }
  endY += (int)(Math.random()*15+1);
}

void mousePressed() {
  background(32, 49, 82, 255);
  startX = (int)(Math.random()*500);
  endX = (startX + ((int)(Math.random()*9)));
  startY = 0;
  endY = 50;
}



void cloud() {
  //Randomize cloud placements
  noStroke();
  for (int x = 50; x <= 500; x += (int)(Math.random()*50)) { 
    //Back Clouds
    fill(80, 90, 120, 200);
    ellipse(x, 110, 200, (int)(Math.random()*50));
  }
  for (int x = 0; x <= 500; x += (int)(Math.random()*50)) {
    //Middle Clouds
    fill(#70747C, 220);
    ellipse(x, (int)(Math.random()*50+50), 200, 100);
  }
  for (int x = 0; x <= 500; x += (int)(Math.random()*50)) { 
    //Front Clouds
    fill(#9B9B9B, 200);
    ellipse(x, (int)(Math.random()*80), 150, 80);
  }
}

void lightningBranch(int x, int y) {
  //Draws random lightning branches from the main lightning
  int i = 0;
  int newX = x+(int)(Math.random()*18-9);
  int newY = y+(int)(Math.random()*18-9);
  strokeWeight(1);
  while (i <= 50) {
    if ((int)(Math.random()*5) == 0) { //if a random number picked is 0, make a lightning branch
      strokeWeight(3);
      stroke(#FFFFFF, 100);
      line(x, y, newX, newY);
      strokeWeight(1);
      stroke(#FFFFFF);
      line(x, y, newX, newY);
      x = newX;
      y = newY;
      newX = x+(int)(Math.random()*30-15);
      newY = y+(int)(Math.random()*50-20);
    }
    i++;
  }
}
