PShape figura;
PImage textura;
float angulo;

void setup(){
  size (500,500,P3D);
  textura= loadImage("Cat_diffuse.jpg");
  figura = loadShape("cat.obj");
  figura.setTexture(textura);
}
 void draw(){
   background (0,0,0);
   lights();
   pushMatrix();
   translate(width/2, height/2); 
   rotateY(frameCount*0.01);
   scale(3.5);
   shape(figura);
   popMatrix();
   
   angulo += 0.1;
 }
