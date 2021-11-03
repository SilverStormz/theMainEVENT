void setbg(){
  image(img, flow, vibe);
  image(img, flow + img.width, vibe);
  flow--;
  
  if (flow < - img.width){
    flow = 0;
  }
}

