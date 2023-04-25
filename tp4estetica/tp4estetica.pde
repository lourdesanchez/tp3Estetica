//int posX1, posY1, posX2, posY2, posX3, posY3, posX4, posY4;

int botones;
int cantBotones=3;
int tamBotones=60; 
int separacion=50;

int pantalla=0;

void setup(){
  size(500,500);
}

void draw(){
  background(#A58989);
  
  if(pantalla==0){
  rect(50, 80, 90, 40);
  rect(205, 80, 90, 40);
  rect(360, 80, 90, 40);
  
  rect(50, 350, 90, 40);
  rect(205, 350, 90, 40);
  rect(360, 350, 90, 40);
  }
  
  if(pantalla==1){
    background(#55B746);
    fill(#FFFFFF);
    rect(17,18,50,20);
    fill(#030303);
    text("volver",25,33);
  }
  
    /*for (int pX=0; pX<cantBotones; pX++) {
      for (int pY=0; pY<cantBotones; pY++){
        rect(pX  , pY , tamBotones,tamBotones-20);
      }*/
      
        println(mouseX, mouseY);
        println(pantalla);
}

void mouseClicked(){
  if(pantalla==0 && mouseX>50 && mouseX<140 && mouseY>80 && mouseY<119){
    pantalla=1;
  }
  
  //VOLVER A PANTALLA 1
  if(pantalla==1 && mouseX>18 && mouseX<70 && mouseY>19 && mouseY<38){
    pantalla=0;
    fill(#FFFFFF);
  }
}
  
  
  //rect();
  
