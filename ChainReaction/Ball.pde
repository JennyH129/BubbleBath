class Ball {
  
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;
  
  Ball(){ 
   float r = random(256);
   float g = random(256);
   float b = random(256);
   c = color(r, g, b);
   rad = 10;
   x = random((width - r) + r/2);
   y = random((height - r) + r/2);
   dx = random(10) - 5;
   dy = random(10) - 5;
   state = 0;
  }
  
  void move(){
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void bounce(){
    if(x < 0 || x > 800)
      dx = -1 * dx;
      
    if(y < 0 || y > 800)
      dy = -1 * dy;
  }
  
  void setState(int newState){
    state = newState; 
  }
  
  void setX(int newX){
   x = newX; 
  }
  
  void setY(int newY){
   y = newY; 
  }
  
  void explode(){
    if(state == 1 && rad < 40){
      rad += 0.25;
    }
    else if(state == 1 && rad >= 40)
      state = 2;
    else if(state == 2 && rad > 0)
      rad -= 0.5;
  }
}