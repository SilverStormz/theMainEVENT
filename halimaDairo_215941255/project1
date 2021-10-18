PVector position, target;
PImage puff;
boolean triggered = false;

float angerDistance = 50;
float puffpos, puffspot;

float speedX = 1;
float speedY = 1;
float imgsize = 60;

int directionX = 1;
int directionY = 1;

void setup() { 
  size(800, 600, P2D);
  ;
  
   puffpos = width/2;
   puffspot = height/2;
   position = new PVector(width/2, height/2);
  
  puff = loadImage("puffball.png");
 
  
  ellipseMode(CENTER);
 imageMode(CENTER);
}

void draw() {
 
  background(113, 188, 255);
  PVector mousePos = new PVector(mouseX, mouseY);
  triggered = position.dist(mousePos) < angerDistance;
  image(puff, puffpos, puffspot, imgsize, imgsize);
  
    
  puffpos = puffpos +( speedX * directionX);
  puffspot = puffspot +( speedY * directionY);
  

  if (puffpos > width-imgsize || puffpos < imgsize) {
    directionX *= -1;
    tint (255, 0, 0);
    
  }
  if (puffspot > height-imgsize || puffspot < imgsize) {
    directionY *= -1;
    tint (255);
    
  }
  
  if (triggered){
    image(puff, (imgsize++), (imgsize++));
    background(116,0,204);
  
  }
 
}
  
  
  

  
  
  
