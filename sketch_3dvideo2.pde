float rotx, roty; 

void setup() {
  size(800, 800, P3D); 
  
}

void draw() { 
  background(255); 
  
  cube(width/2, height/2, 0, 200, 200);
  ball(200, 700, 0, 100, 50); 
}

void cube(float x, float y, float z, color c, float size) { 
  pushMatrix();
  translate(x, y, z); //x, y, z
  
  rotateX(rotx); 
  rotateY(roty); 
  //rotateZ(); 
  
  fill(c); 
  stroke(0); 
  strokeWeight(3);
  box(size); //width, height, depth 
  popMatrix(); 
}

void ball(float x, float y, float z, color c, float size) { 
  pushMatrix();
  translate(x, y, z); 
  
  rotateX(rotx); 
  rotateY(roty); 
  
  fill(c); 
  stroke(0); 
  strokeWeight(1); 
  sphere(size); 
  popMatrix(); 
}

void mouseDragged() {  
  rotx = rotx + (pmouseY - mouseY)*0.01; 
  roty = roty + (pmouseX - mouseX)*-0.01; 
}
