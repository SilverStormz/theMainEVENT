

void setPipes(){
  for(int i = 0; i < pipeET.length; i++){
    image(pipedown, pipeET[i], pipeTE[i]);
    image(pipeup, pipeET[i], pipeTE[i] + 550);
    pipeET[i] -=2;
    
    if(score > 10){
      pipeET[i]--;
    }
    if(score > 20){
      pipeET[i] = pipeET[i]--;
    }
    
    
   if(pipeET[i] < -200){
     pipeET[i] = width;
   }
      if(flow > (pipeET[i] - 30) && flow < pipeET[i] + 90){
     if(!(vibe > pipeTE[i] + 140 && vibe < pipeTE[i] + (500))){
       gamePoint = 1;
     } 
     else if (flow==pipeET[i] || flow == pipeET[i] + 1){
       score++;
     }
   }
  }
 }
 
   


