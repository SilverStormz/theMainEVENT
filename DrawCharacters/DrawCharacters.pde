myCharacter ch;
//Paras parameters = new Paras();

//mian setup, create an object myCharacter
void setup() {
  size(800, 600, P2D);
  ch = new myCharacter('f');
}

//main draw, draw the object myCharater
void draw() {
  background(127);
  ch.draw();
}
