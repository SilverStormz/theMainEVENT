
float scaleAmp = 700;
float scaleFreq = 2000;

void setup() {
  size(800, 600, P2D);  
  setupSound();
}

void draw() {
  background(163);
  
  updateSound();
  
  println("amp: " + amp + " freq: " + freq);

  rectMode(CENTER);
  float fillValR = constrain(map(freq, 0, scaleFreq, 0, 155), 0, scaleFreq);
  float fillValG = constrain(map(freq, 0, scaleFreq, 0, 62), 0, scaleFreq);
  float fillValB = constrain(map(freq, 0, scaleFreq, 0, 130), 0, scaleFreq);
  fill(fillValR, fillValG, fillValB);
  rect(width/2, height - (amp * scaleAmp), 203, amp * scaleAmp);
}