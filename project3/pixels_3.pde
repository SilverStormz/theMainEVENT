PImage img;
float pix;
float pixSize;
float B;
float z;

void setup() {
  size (600, 600, P3D);
  img = loadImage("nike.jpg");
  img.resize(600, 600);
}

void draw() {
  background (0);
  fill(125, 0, 113);
  noStroke();
  
  sphereDetail(4);
  
  
  fill(154, 205, 50);
  //ellipse(mouseX, mouseY, 40, 40);
  
   pix = 80;
   pixSize = width/pix;
   
   pushMatrix();
   
   translate(width/2, height/2);
   rotateY(map(mouseX, 0, width, 0, 50));
  
   for( int x = 0; x < pix; x = x + 1) {
     for( int y = 0; y < pix; y = y + 1){
      color c =  img.get(int(x*pixSize), int(y*pixSize));
      
      B = map(brightness(c), 0, 255, 1, 0);
      
      float z = map(B, 0, 1, -80, 80);
      
      pushMatrix();
      translate(x*pixSize - width/2, y*pixSize - height/2, z);
      sphere(pixSize*B* .2);
      popMatrix();
      
      
     }
   }
  popMatrix();
}