int mode =0;
float angle =0;
float theta1, theta2, theta3,theta4,theta5, theta6 ;
PImage img;

void setup() {
  size (800, 800, P3D);
  img = loadImage("sky.jpg");
  //rectMode(RADIUS);
}

void draw () {
  angle = angle + 1;
  
  theta1 = theta1 + 1;
  theta2 = theta2 + 0.1;
  theta3 = theta3 + 0.2;
  theta4 = theta4 + 0.3;
  theta5 = theta5 + 0.4;
  theta6 = theta6 + 0.5;


  imageMode(CENTER);
  image(img, 800, 800);
  background(img);
  fill(245, 153, 32);
  rectMode(CENTER);
  translate(width/2, height/2);

  pushMatrix();
  rotateY(radians(theta1));
  scale(1);
  sphere(100);
  popMatrix();

  pushMatrix();
  rotateY(radians(theta2));
  fill(0, 255, 0);
  translate(200, 0);
  sphere(50);
  popMatrix();


  //angle = angle + 0.03;

  pushMatrix();
  rotateY(radians(theta3));
  fill(255, 0, 0);
  translate(200, -150);
  sphere(50);
  popMatrix();


  pushMatrix();
  rotateY(radians(theta4));
  fill(255, 255, 255);
  translate(300, 100);
  sphere(40);
  popMatrix();

pushMatrix();
  rotateY(radians(theta5));
  fill(100,60,255);
  translate(-250, 100);
  sphere(40);
  popMatrix();
  
  
  pushMatrix();
  rotateY(radians(theta6));
  fill(184, 245, 32);
  translate(100, 200);
  sphere(40);
  popMatrix();
  
  
  pushMatrix();
  rotateY(radians(theta2));
  fill(100,255,255);
  translate(-200, -150);
  sphere(40);
  popMatrix();
}
