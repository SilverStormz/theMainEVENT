import processing.sound.*;

PImage img;

Buttons[] button = new Buttons[4];


SoundFile[] file = new SoundFile[4];

int numsounds = 4;




void setup(){
  size(600, 600);
  img = loadImage("vg.jpg");
  img.resize(600,600);
  background(img);
  

  button[0] = new Buttons(0, 50, 400, 70, #00ff7f );
  button[1] = new Buttons(1, 150, 400, 70, #dda0dd);
  button[2] = new Buttons(2, 250, 400, 70, #fffacd);
  button[3] = new Buttons(3, 350, 400, 70, #00ffff);
  
  
  file[0] = new SoundFile(this, "history.wav");
  file[1] = new SoundFile(this, "Ifetiwa.aiff");
  file[2] = new SoundFile(this, "sexybeats.mp3");
  file[3] = new SoundFile(this, "piano.mp3");
 
  
}

void draw() {
  
  for(Buttons currentButtons : button){
    currentButtons.display();
    
  }
    
  
  
 
  
}

void mousePressed(){
  
  
  
  for(Buttons currentButtons : button){
  if(currentButtons.isHover() == true){
    file[currentButtons.OId].play();
    currentButtons.isLightOn = true;
    
  }
    
  }
  
}


void mouseReleased(){
  
   
  for(Buttons currentButtons : button){
    file[currentButtons.OId].stop();
    currentButtons.isLightOn = false; 
    
  
  }
  
  
  
  
}
  