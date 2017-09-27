//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

float rTime = 3000;
float yTime = 6000;
float gTime = 9000;
float time = 12000;
float state = 1;
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawOutlineOfLights();
  drawRedLight();
  drawYellowLight();
  drawGreenLight();
  if (millis() > time){
    rTime = rTime + 12000;
    yTime = yTime + 12000;
    gTime = gTime + 12000;
    time = time + 12000;
  }
}


void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
  fill(255);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  ellipse(width/2, height/2, 50, 50); //middle
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}

void drawRedLight(){
  if (state == 1){
    fill(255,0,0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
    if (millis() >rTime){
      state += 1;
    }
  }
}
  
void drawYellowLight(){
  if (state == 2){
    fill(255,255,0);
    ellipse(width/2, height/2, 50, 50); //middle
    if (millis() > yTime){
      state += 1;
    }
  }
}
  
void drawGreenLight(){
  if (state == 3){
    fill(0,255,0);
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
    if (millis() > 12000){
    state = 1;
    }
    
    }  
}
