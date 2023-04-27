int posX0;
int posY0;
int tamX;
int tamY;

boolean mostrarDibujo1, mostrarDibujo2, mostrarDibujo3, mostrarDibujo4, mostrarDibujo5, mostrarDibujo6;

PImage [] dibujos; 

void setup () {

  fullScreen ();
  //size(2000,900);
  noStroke();
  tamX = 100;
  tamY = 50;
  posX0 = 100;
  posY0 = 100;

  dibujos = new PImage [5];
  for (int i = 0; i < 5; i++) {
    dibujos [i] = loadImage (i + ".png");
  }
  
  background (255);

}

void draw () {

  //background (255);

  // !!!!!!!!!!! DIBUJO DE BOTONES !!!!!!!!!!!!
  stroke (0);
  fill (255, 0, 0);
  rect (posX0, posY0, tamX, tamY); // 1
  fill (#FF7403);
  rect (posX0 + 200, posY0, tamX, tamY); // 2
  fill (#FAFF03);
  rect (posX0 + 400, posY0, tamX, tamY); // 3
  fill (0, 255, 0);
  rect (posX0 + 600, posY0, tamX, tamY); // 4
  fill (0, 0, 255);
  rect (posX0 + 800, posY0, tamX, tamY); // 5
  fill (#FF03C9);
  rect (posX0 + 1000, posY0, tamX, tamY); // 6

  // CUADRADO DE REFERENCIA PARA VER DONDE VAN LOS DIBUJOS
  //fill (200);
  rect (300, 200, 800, 500); 
  
  
  if (mostrarDibujo1) {
    //image (dibujos[0],mouseX, mouseY);
  }
}

void mousePressed(){
  if(mouseX>300 && mouseX<950 && mouseY>200 && mouseY<600){
     image (dibujos[0],mouseX, mouseY);
  }
}

  //MUESTRA DIBUJOS
  /*if (mostrarDibujo1) {
    image (dibujos[0],0, 0);
    //dibujos[0].resize(800, 500);
  }
  if (mostrarDibujo2) {
    image (dibujos[1], 400, 200);
    //dibujos[1].resize(800, 500);
  }
  if (mostrarDibujo3) {
    image (dibujos[2], 500, 200);
    //dibujos[2].resize(800, 500);
  }
  if (mostrarDibujo4) {
    image (dibujos[3], 600, 200);
    //dibujos[3].resize(800, 500);
  }
  if (mostrarDibujo5) {
    //image (dibujos[4], random(300), random(200));
    //dibujos[4].resize(800, 500);
  }
  if (mostrarDibujo6) {
    image (dibujos[5], 300, 200);
    //dibujos[5].resize(800, 500);
  }
  
  println(mouseX,mouseY);
}



void mousePressed () {
  
  if (mouseX > posX0 && mouseX < posX0 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    println ("apretaste");
     mostrarDibujo1 = !mostrarDibujo1 ;  
  }
   if(mostrarDibujo1 == !mostrarDibujo1 && mouseX>300 && mouseX<1101 && mouseY>200 && mouseY<700){
    image (dibujos[0],mouseX, mouseY);
  }
  
  //image (dibujos[0],mouseX, mouseY);
  /*if (mouseX > posX0 && mouseX < posX0 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    println ("apretaste");
     mostrarDibujo1 = !mostrarDibujo1;   
     image (dibujos[0],mouseX, mouseY);
  }
  ///BTN 2
  if (mouseX > posX0 + 200 && mouseX < posX0 + 200 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    image (dibujos[1], mouseX, mouseY);
  }
  ///BTN 3
  if (mouseX > posX0 + 400 && mouseX < posX0 + 400 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    mostrarDibujo3 = !mostrarDibujo3;
  }
  ///BTN 4
  if (mouseX >posX0 + 600 && mouseX < posX0 + 600 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    mostrarDibujo4 = !mostrarDibujo4;
  }

  ///BTN 5
  if (mouseX >posX0 + 800 && mouseX < posX0 + 800 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    mostrarDibujo5 = !mostrarDibujo5;
  }

  ///BTN 6
  if (mouseX >posX0 + 1000 && mouseX < posX0 + 1000 + tamX && mouseY > posY0 && mouseY < posY0 + tamY) {
    mostrarDibujo6 = !mostrarDibujo6 ;
  }
}*/
