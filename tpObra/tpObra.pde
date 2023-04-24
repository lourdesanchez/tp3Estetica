import fisica.*;

FWorld mundo;

//creamos las partes de la obra
FBox parteObra;
FBox parteObra2;
FBox parteObra3;
FBox parteObra4;
FBox parteObra5;
FBox parteObra6;
FBox parteObra7;
FBox parteObra8;
FBox parteObra9;

PImage lienzo;

int tamObra=140;

//int btnReset;

void setup() {
  size(600, 600);
  
  lienzo= loadImage("lienzo.jpg");
  Fisica.init(this);

  mundo = new FWorld();
  //para agregarle bordes al mundo y los elementos no se escapen
  //mundo.setEdges();

  //le damos un ancho y un alto a la caja
  parteObra = new FBox(tamObra, tamObra);
  parteObra2=new FBox(tamObra, tamObra);
  parteObra3=new FBox(tamObra, tamObra);
  parteObra4=new FBox(tamObra, tamObra);
  parteObra5=new FBox(tamObra, tamObra);
  parteObra6=new FBox(tamObra, tamObra);
  parteObra7=new FBox(tamObra, tamObra);
  parteObra8=new FBox(tamObra, tamObra);
  parteObra9=new FBox(tamObra, tamObra);

  //para darle una posición
  parteObra.setPosition(120, 140);
  parteObra2.setPosition(160, 292);
  parteObra3.setPosition(268, 115);
  parteObra4.setPosition(460, 400);
  parteObra5.setPosition(350, 270);
  parteObra6.setPosition(169, 442);
  parteObra7.setPosition(489, 115);
  parteObra8.setPosition(298, 492);
  parteObra9.setPosition(483, 250);

  //para decirle que se quede quieto xd
  parteObra.setStatic(true);
  parteObra2.setStatic(true);
  parteObra3.setStatic(true);
  parteObra4.setStatic(true);
  parteObra5.setStatic(true);
  parteObra6.setStatic(true);
  parteObra7.setStatic(true);
  parteObra8.setStatic(true);
  parteObra9.setStatic(true);

  //para sacarle las lineas
  parteObra.setNoStroke();
  parteObra2.setNoStroke();
  parteObra3.setNoStroke();
  parteObra4.setNoStroke();
  parteObra5.setNoStroke();
  parteObra6.setNoStroke();
  parteObra7.setNoStroke();
  parteObra8.setNoStroke();
  parteObra9.setNoStroke();

  //lo agrego al mundo
  mundo.add(parteObra);
  mundo.add(parteObra2);
  mundo.add(parteObra3);
  mundo.add(parteObra4);
  mundo.add(parteObra5);
  mundo.add(parteObra6);
  mundo.add(parteObra7);
  mundo.add(parteObra8);
  mundo.add(parteObra9);
}

void draw() {
  background(#FDFFFC);
  image(lienzo,0,0);
  //para que hagan todos los calculos matematicos entre los cuerpos que interactuan?????????
  mundo.step();
  //dibuja el mundo de fisica
  mundo.draw();

  //BTN REINICIO
  rect(20, 20, 60, 30);

  println(mouseX, mouseY);
  //println(parteObra, parteObra2, parteObra3, parteObra4, parteObra5, mouseX,mouseY);
}

void mouseClicked() {
  if (mouseX>20 && mouseX<80 && mouseY>20 && mouseY<50) {
    //background(#489328);
    parteObra.setPosition(120, 140);
    parteObra2.setPosition(160, 292);
    parteObra3.setPosition(268, 115);
    parteObra4.setPosition(460, 400);
    parteObra5.setPosition(350, 270);
    parteObra6.setPosition(169, 442);
    parteObra7.setPosition(489, 115);
    parteObra8.setPosition(298, 492);
    parteObra9.setPosition(483, 250);
  }
}
