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
    ellipse(b.x, b.y, b.rad*2, b.rad*2);
    b.move(); 
    
  }
  delay(10);

}