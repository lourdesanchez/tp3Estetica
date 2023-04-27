

import fisica.*;

FBox boxButton;
FBox boxButton2;
FBox boxButton3;
FBox boxButton4;

FWorld world;

color button1Color = #C1859E;
color button2Color = #AD8EC9;
color button3Color = #BD85C1;
color button4Color = #B75E61;

color hoverColorbtn1 = #6F253B;
color hoverColorbtn2 = #4C3B93;
color hoverColorbtn3 = #6B2E7E;
color hoverColorbtn4 = #71272C;

//color bodyColor = #BD85C1;

PImage [] dibujos; 
PImage lienzo;

int tamBoxX, tamBoxY;

int tamFlores=170;

void setup() {
  fullScreen();
  //size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setEdges();
  world.remove(world.left);
  world.remove(world.right);
  world.remove(world.top);

  tamBoxX=80;
  tamBoxY=50;

  //////////BTN 1
  boxButton = new FBox(tamBoxX, tamBoxY);
  boxButton.setPosition(400, 100);
  boxButton.setStatic(true);
  boxButton.setFillColor(button1Color);
  boxButton.setNoStroke();
  world.add(boxButton);

  //////////BTN 2
  boxButton2 = new FBox(tamBoxX, tamBoxY);
  boxButton2.setPosition(590, 100);
  boxButton2.setStatic(true);
  boxButton2.setFillColor(button2Color);
  boxButton2.setNoStroke();
  world.add(boxButton2);

  //////////BTN 3
  boxButton3 = new FBox(tamBoxX, tamBoxY);
  boxButton3.setPosition(790, 100);
  boxButton3.setStatic(true);
  boxButton3.setFillColor(button3Color);
  boxButton3.setNoStroke();
  world.add(boxButton3);

  //////////BTN 4
  boxButton4 = new FBox(tamBoxX, tamBoxY);
  boxButton4.setPosition(1000, 100);
  boxButton4.setStatic(true);
  boxButton4.setFillColor(button4Color);
  boxButton4.setNoStroke();
  world.add(boxButton4);


  ///////ARREGLO DE DIBUJOS
  dibujos = new PImage [4];
  for (int i = 0; i < 4; i++) {
    dibujos [i] = loadImage (i + ".png");
  }

  ///////LIENZO
  lienzo = loadImage("lienzo.jpg");
}


void draw() {
  background(#EAE4C5);
  image(lienzo, 300, 200, 800, 500); 

  world.step();
  world.draw();
}

void mousePressed() {
  FBody pressed = world.getBody(mouseX, mouseY);
  if (pressed == boxButton) {    
    FBox flor1 = new FBox(120, 120);
    flor1.setPosition(400, 300);
    flor1.setStatic(true);
    flor1.attachImage(dibujos[0]);
    dibujos[0].resize(tamFlores, tamFlores);
    world.add(flor1);
    
    
  } else if (pressed == boxButton2) {
    FCircle flor2 = new FCircle(120);
    flor2.setPosition(590, 300);
    flor2.setStatic(true);
    flor2.attachImage(dibujos[1]);
    dibujos[1].resize(tamFlores, tamFlores);
    world.add(flor2);
    
    
  } else if (pressed == boxButton3) {
    FCircle flor3= new FCircle(120);
    flor3.setPosition(790, 300);
    flor3.setStatic(true);
    flor3.attachImage(dibujos[2]);
    dibujos[2].resize(tamFlores, tamFlores);
    world.add(flor3);
    
    
  } else if (pressed == boxButton4) {
    FCircle flor4= new FCircle(120);
    flor4.setPosition(1000, 300);
    flor4.setStatic(true);
    flor4.attachImage(dibujos[3]);
    dibujos[3].resize(tamFlores, tamFlores);
    world.add(flor4);
  }
}

void mouseMoved() {
  FBody hovered = world.getBody(mouseX, mouseY);
  if (hovered == boxButton) {
    hovered.setFillColor(hoverColorbtn1);
  } 
   else if (hovered ==  boxButton2) {
    hovered.setFillColor(hoverColorbtn2);
  } 
    else if (hovered ==  boxButton3) {
    hovered.setFillColor(hoverColorbtn3);
  } 
     else if (hovered ==  boxButton4) {
    hovered.setFillColor(hoverColorbtn4);
  } 
  
  else {
    boxButton.setFillColor(button1Color);
    boxButton2.setFillColor(button2Color);
    boxButton3.setFillColor(button3Color);
    boxButton4.setFillColor(button4Color);
  }
}

/*void keyPressed() {
 try {
 saveFrame("screenshot.png");
 } 
 catch (Exception e) {
 }
 }*/
