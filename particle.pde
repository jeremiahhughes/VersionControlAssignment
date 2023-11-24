class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  int particleColor;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    particleColor = color(random(0,255), random(0,255), random(0,255));
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(particleColor);
    ellipse(position.x, position.y, 10, 10);
  }
}
