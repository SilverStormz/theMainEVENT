PShader shader; 

void setup() {
  size(800, 600, P2D);
  
  img = loadImage("bg.jpg");
  
  shader = loadShader("shaders/thresh.glsl");
  shader.set("resolution", float(width), float(height), 2.6);
}

void draw() {
  background(0);
  
  shader.set("width/2", 255 * ((float) mouseX / (float) width)); 
  shader.set("tex0", img);
  shader(shader);
  
  
}

