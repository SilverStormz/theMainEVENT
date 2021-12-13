class Buttons {
  
  float Ox;
  float Oy;
  float OSize;
  
  color OColor;
  color darker;
  
  int OId;
  
  boolean isLightOn = false;
  
  Buttons(int tempId, float tempX, float tempY, float tempSize, color tempColor){
    
    OId = tempId;
    Ox = tempX;
    Oy = tempY;
    OSize = tempSize;
    OColor = tempColor;
    
    darker = lerpColor(0, OColor, .76);
    
  }
  
  void display(){
    
    if(isLightOn){
      fill(OColor);
    }
    
    else{
    fill(darker);
    }
    
    
    rect(Ox, Oy, OSize, OSize);
  
    
  }
  boolean isHover() {
    
    if(mouseX > Ox && mouseX < (Ox + OSize) && mouseY > Oy && mouseY < (Oy + OSize)){
      
      return true;
    }else{
    
    return false;
    }
  }
}