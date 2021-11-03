PImage img, pipeup, pipedown;
int [] pipeET, pipeTE;
int bgX, bgY,  flow, vibe, grom;
int gamePoint;



float humanX = 140; 
float humanY = 100;
float humanWidth = 20;
float humanHeight = 50;
float humanSpeedY = 0;
float score;
float floorY = 550;



boolean Jumping = false; 


void setup(){ 
  size(800, 600, P2D);
  
 img = loadImage("bg.jpg");
 pipeup = loadImage("pipeup.png");
 pipedown = loadImage("pipedown.png");
 flow = 100;
 vibe = 75;
 grom = 1;
 
 pipeET = new int [9];
 pipeTE = new int[pipeET.length];
 for(int i = 0; i < pipeET.length; i++)
  {
    pipeET[i] = width + 200*i;
    pipeTE[i] = (int)random(-350, 0);
  } 
  gamePoint = -1;


}

void draw (){
  
  
  
  imageMode(CENTER);
  image(img, width, height);
  
 stroke(255);
 line (0, floorY, width, floorY);

  
  if(gamePoint < 0){
    startUP();
  }
  if(gamePoint == 0)
  { 
    setbg();
    setPipes();
    runhuman();
  }
  
  stroke(255);
 line (0, floorY, width, floorY);
 
   fill(0);
  textSize(20);

  text(("Score: " + score), 50, 50);
}

 



  
 
