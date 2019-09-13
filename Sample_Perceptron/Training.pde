float getY(float x){
   return 0.3*x + 0.2; 
}

class Points
{
  float x;
  float y;
  float bias;
  int lebel;
  //constructor
  Points(){
     x = random(-1,1);
     y = random(-1,1);
     bias = 1;
     
     float lineY = getY(x);
     if( y > lineY) lebel = 1;
     else lebel = -1;
  }
  
  Points(float x_, float y_){
     x = x_;
     y = y_;
     bias = 1;
  }
  
  float pixelX(){
    return map(x, -1, 1, 0, width);
  }
  
  float pixelY(){
    return  map(y, -1, 1, height, 0);
  }
  
  
  // function to draw points
  void show()
  {
     stroke(0);
     if(lebel == 1) {fill(255);}
     else{ fill(0);}
     
     float px = pixelX(); 
     float py = pixelY();
     ellipse(px,py,16,16);
  }
 
}
