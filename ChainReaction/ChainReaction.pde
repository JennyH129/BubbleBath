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
      if(b.state == 0)
        b.move(); 
      else
        b.explode();
  }
}

int triggers = 1;
void mouseClicked(){
   if(triggers > 0){
      Ball source = new Ball();
      source.x = mouseX;
      source.y = mouseY;
      source.state = 1;
      balls = (Ball[])expand(balls, balls.length + 1);

   }
}