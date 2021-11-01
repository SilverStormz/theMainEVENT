class myCharacter {
  ArrayList<BezierCurve> strokes;// = new ArrayList<BezierCurve>();
  
  myCharacter (char c) {
    strokes = new ArrayList<BezierCurve>();
    switch (c) {
      case 'a':
        strokes.add(new BezierCurve(new PVector(200, 100), 
          new PVector(500, 50),
          new PVector(400, 400)));
        strokes.add(new BezierCurve(new PVector(420, 180), 
          new PVector(100, 150),
          new PVector(100, 430),
          new PVector(400, 350)));
        break;
      case 'b':
        strokes.add(new BezierCurve(new PVector(100, 100), 
          new PVector(100, 200),
          new PVector(100, 500)));
        strokes.add(new BezierCurve(new PVector(100, 350), 
          new PVector(300, 350),
          new PVector(300, 500),
          new PVector(100, 500)));
        break;
       case'c' :
         strokes.add(new BezierCurve(new PVector(100, 100),
         new PVector(300, 419),
         new PVector(524, 173),
         new PVector(300, 129)));
         break;
       case 'd' :
          strokes.add(new BezierCurve(new PVector(400, 100), 
            new PVector(400, 200),
            new PVector(400, 500)));
          strokes.add(new BezierCurve(new PVector(400, 350),
            new PVector(200, 350),
            new PVector(200, 500),
            new PVector(400, 500)));
            break;
        case 'f' :
             strokes.add(new BezierCurve(new PVector(200, 200), 
            new PVector(400, 200),
            new PVector(450, 200)));
             strokes.add(new BezierCurve(new PVector(400, 100),
            new PVector(250, 150),
            new PVector(250, 300),
            new PVector(250, 500)));
            break;
            
          
    }
    //strokes.add(new BezierCurve(new PVector(100, 100), 
    //new PVector(100, 600),
    //new PVector(400, 400)));
  }
  
  void draw() {
    for (int i =0; i<strokes.size(); i++) {
      strokes.get(i).draw();
    }
  }
}
