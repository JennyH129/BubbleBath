Ball [] balls; 
boolean reactionStarted; 

void setup(){
   size(800,800); 
   reactionStarted = false; 
   balls = new Ball [25]; 
   for (int i = 0; i < balls.length; i ++){
     balls[i] = new Ball(); }
}


void draw(){
  background(0);
  for (Ball b : balls){ 
      fill(b.c);
      ellipse(b.x, b.y, b.rad*2, b.rad*2);
      if(reactionStarted){
        for(Ball c : balls){
          if(b.state == 0 && b != c){
            if(abs(b.x - c.x) < c.rad && abs(b.y - c.y) < c.rad)
              b.state = 1;
          }
        }
      }
      if(b.state > 0)
        b.explode(); 
      else
        b.move();
  }
}

int triggers = 1;
void mouseClicked(){
   if(triggers > 0){
      balls[0].setX(mouseX);
      balls[0].setY(mouseY);
      balls[0].setState(1);
      triggers--;
      reactionStarted = true;
   }
}