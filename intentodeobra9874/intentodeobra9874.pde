/**
 *  Buttons and bodies
 *
 *  by Ricard Marxer
 *
 *  This example shows how to create bodies.
 *  It also demonstrates the use of bodies as buttons.
 */

import fisica.*;

FBox boxButton;
FBox boxButton2;
FBox boxButton3;

FWorld world;

color buttonColor = #155AAD;
color hoverColor = #55AA11;
color bodyColor = #6E0595;

PImage [] dibujos; 
PImage lienzo;

void setup() {
  size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setEdges();
  world.remove(world.left);
  world.remove(world.right);
  world.remove(world.top);

  boxButton = new FBox(40, 40);
  boxButton.setPosition(width/4, 50);
  boxButton.setStatic(true);
  boxButton.setFillColor(buttonColor);
  boxButton.setNoStroke();
  world.add(boxButton);

  boxButton2 = new FBox(40,40);
  boxButton2.setPosition(2*width/4, 50);
  boxButton2.setStatic(true);
  boxButton2.setFillColor(buttonColor);
  boxButton2.setNoStroke();
  world.add(boxButton2);

  boxButton3 = new FBox(40,40);
  /*boxButton3.vertex(20, 20);
  boxButton3.vertex(-20, 20);
  boxButton3.vertex(0, -20);*/
  boxButton3.setPosition(3*width/4, 50);
  boxButton3.setStatic(true);
  boxButton3.setFillColor(buttonColor);
  boxButton3.setNoStroke();
  world.add(boxButton3);
  
  ///////ARREGLO DE DIBUJOS
  dibujos = new PImage [5];
  for (int i = 0; i < 5; i++) {
    dibujos [i] = loadImage (i + ".png");
  }
  
  ///////LIENZO
  lienzo = loadImage("lienzo.jpg");

}


void draw() {
  background(255);
  image(lienzo,85, 150, 260, 220); 

  world.step();
  world.draw();
  
}

void mousePressed() {
  FBody pressed = world.getBody(mouseX, mouseY);
  if (pressed == boxButton) {
    FBox flor1 = new FBox(90, 90);
    flor1.setPosition(width/4, 200);
    flor1.setStatic(true);
    flor1.attachImage(dibujos[0]);
    dibujos[0].resize(90, 90);
    //myBox.setRotation(random(TWO_PI));
    //myBox.setVelocity(0, 200);
    //myBox.setFillColor(bodyColor);
    //myBox.setNoStroke();
    world.add(flor1);
  } 
  else if (pressed == boxButton2) {
    FCircle flor2 = new FCircle(90);
    flor2.setPosition(2*width/4, 200);
    flor2.setStatic(true);
    flor2.attachImage(dibujos[1]);
    dibujos[1].resize(90, 90);
    /*myCircle.setRotation(random(TWO_PI));
    myCircle.setVelocity(0, 200);
    myCircle.setFillColor(bodyColor);
    myCircle.setNoStroke();*/
    world.add(flor2);
  } 
  
  else if (pressed == boxButton3) {
    FCircle flor3= new FCircle(90);
    flor3.setPosition(3*width/4, 200);
    flor3.setStatic(true);
    flor3.attachImage(dibujos[2]);
    dibujos[2].resize(90,90);
    /*flor3.setRotation(random(TWO_PI));
    flor3.setVelocity(0, 200);
    flor3.setFillColor(bodyColor);
    flor3.setNoStroke();*/
    world.add(flor3);
  }
  

}

void mouseMoved() {
  FBody hovered = world.getBody(mouseX, mouseY);
  if (hovered == boxButton 
      || hovered == boxButton2
      || hovered == boxButton3) {
    hovered.setFillColor(hoverColor);

  } else {
    boxButton.setFillColor(buttonColor);
    boxButton2.setFillColor(buttonColor);
    boxButton3.setFillColor(buttonColor);
  }
}

void keyPressed() {
  try {
    saveFrame("screenshot.png");
  } 
  catch (Exception e) {
  }
}
