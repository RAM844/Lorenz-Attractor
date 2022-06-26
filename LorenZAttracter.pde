
import peasy.*;

PeasyCam cam;

float x = 0.01;
float y = 1;
float z = 1;

float a =10;
float b =28;
float c =8.0/3.0;

ArrayList<PVector> points =new ArrayList<PVector>();



void setup(){
 size(800,600, P3D);
  colorMode(HSB);
 cam = new PeasyCam(this,500);

}

void draw(){
  
  //rotateX(-.5);
  //rotateY(-.5);
   //rotateZ(-.5);
  background(0);
  
  
  //pushMatrix();
  //translate(0,0,20);
  
  
  //popMatrix();
  float dt =0.01;
  
  
  float dx = (a * (y - x))*dt;
  float dy = (x * (b-z)-y)*dt;
  float dz =(x*y -c*z)*dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x,y,z));
  
  translate(width/2,height/2);
  
  scale(5);
  noFill();
  float hu=0;
  beginShape();
  for (PVector v : points){
    stroke(hu,255,255);
    vertex(v.x,v.y,v.z);
    hu +=0.1;
    if(hu > 255){
      hu = 0; 
    }
  }
  endShape();
  
  
}
