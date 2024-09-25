//Lightning
/*IDEA: Make moving cloud, when mouse is clicked, draw lightning 
 originating from the cloud
 IDEA 2: Draw some stars that follow the path of a curve?*/

void setup(){
 size(500, 500);
 noLoop();
}

void draw(){
  background(#203152); 
  lightning();
  cloud();
}

void mousePressed(){
 redraw(); 
}

void cloud(){
//Randomize cloud placements
   noStroke();
 for(int x = 50; x <= 500; x += (int)(Math.random()*50)){ 
   //Back Clouds
   fill(80, 90, 120, 200);
   ellipse(x, (int)(Math.random()*30+80), 200, 100);
   }
 for(int x = 0; x <= 500; x += (int)(Math.random()*50)){
   //Middle Clouds
   fill(#70747C, 220);
   ellipse(x, (int)(Math.random()*50+50), 200, 100);
 }
 for(int x = 0; x <= 500; x += (int)(Math.random()*50)){ 
   //Front Clouds
   fill(#9B9B9B, 200);
   ellipse(x, (int)(Math.random()*80), 150, 80); 
   }
 }
 
public void lightning(){
  stroke(#FFFFFF);
  int startX = (int)(Math.random()*500);
  int endX = (startX + ((int)(Math.random()*9)));
  int startY = 100;
  int endY = 120;
  while(endY <= 500){
    strokeWeight(5);
    line(startX, startY, endX, endY);
    lightningBranch(startX, startY);
    startX = endX;
    startY = endY;
    endX += (int)(Math.random()*30-15);
    endY += (int)(Math.random()*9+1);
  }
 }
 
void lightningBranch(int x, int y){
//Draws random lightning branches from the main lightning
  int i = 0;
  int newX = x+(int)(Math.random()*18-9);
  int newY = y+(int)(Math.random()*18-9);
  strokeWeight(2);
  while(i <= 5){
    if((int)(Math.random()*5) == 0){ //if a random number picked is 0, make a lightning branch
      line(x, y, newX, newY);
      x = newX;
      y = newY;
      newX = x+(int)(Math.random()*50-25);
      newY = y+(int)(Math.random()*50-20);
    }
    i++;
  }
}
