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
  cloud(0);
}

void mousePressed(){
 redraw(); 
}

void cloud(int cloudX){
//Randomize cloud placements
   noStroke();
 for(int x = 50; x <= 500; x += (int)(Math.random()*50)){ 
   //Back Clouds
   fill(80, 90, 120, (int)(Math.random()*255));
   ellipse(x, (int)(Math.random()*50+80), 200, 100);
   }
 for(int x = 0; x <= 500; x += (int)(Math.random()*50)){ 
   //Front Clouds
   fill(#8d94a1);
   ellipse(x, (int)(Math.random()*80), 150, 80); 
   }
   
 }
