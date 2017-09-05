int pantalla=0;
int seleccion=0;
int turno=0;
int[] jugador1=new int[3];
int[] jugador2=new int[3];

PGraphics matriz;
float delta;

int[] m1=new int[3];
int[] m2=new int[3];
int[] m3=new int[3];
int[] m4=new int[3];
int[] m5=new int[3];
int[] m6=new int[3];

void setup()
{
  m1[0]=37;
  m1[1]=35;
  m1[2]=150;

  m2[0]=35;
  m2[1]=35;
  m2[2]=150;
  
  m3[0]=36;
  m3[1]=35;
  m3[2]=150;

  m4[0]=34;
  m4[1]=35;
  m4[2]=150;

  m5[0]=35;
  m5[1]=35;
  m5[2]=150;

  m6[0]=35;
  m6[1]=35;
  m6[2]=150;

  matriz = createGraphics(200,200);

  size(1000, 700); 
  background(0);
  textSize(40);

}

void draw()
{
  switch (pantalla)
  {
  case 0:
    background(0,155,0);
  delta+=0.1;
  matriz.beginDraw();
  matriz.background(0,155,0);
  matriz.stroke(0);
  matriz.fill(255);
  matriz.ellipse(100,delta,delta,delta);
  matriz.endDraw();
  image(matriz,100,100); 
    pushMatrix();
    translate(150,200);
    textSize(30);
    fill(0,0,255);
    text("DUELO DE BOTARGAS",200,50);
    fill(255,0,0);
    text("DEFIENDE TUS COLORES A MUERTE",100,150);
    fill(50);
    text("PRESIONE 'ALT' PARA SELECCIONAR",100,270);
    popMatrix();
   
    break;
  case 1:
    background(0,255,0);
    noFill();
    stroke(255);
    ellipse(500,300,200,200);
    line(0,300,1000,300);
     pushMatrix();
     translate(100,600);
     fill(50);
    textSize(30); 
    text("CON EL CURSOR SELECCIONE BOTARGA1 Y BOTARGA2",50,50);
    popMatrix();
    
    stroke(0);
    monster1();
    translate(0,0);
    
    pushMatrix();
    translate(300, 0);
    monster2();
    popMatrix();
    
    pushMatrix();
    translate(600, 0);
    monster3();
    popMatrix();

    pushMatrix();
    translate(0, 300);
    monster4();
    popMatrix();

    pushMatrix();
    translate(300, 300);
    monster5();
    popMatrix();

    pushMatrix();
    translate(600, 300);
    monster6();
    popMatrix();

    break;
  case 2:
    background(0,200,0);
      fill(100,100,100);
      textSize(24);
    pushMatrix();
      text("ATK BOTARGA 1 = Q    ATK BOTARGA 2 = P", 200, 570);
    popMatrix();
    
    pushMatrix();
    fill(255,255,0);
    rect(100,100,jugador1[2],30);
    popMatrix();
    
    pushMatrix();
    fill(255,255,0);
    rect(700,100,jugador2[2],30);
    popMatrix();
    
    pushMatrix();
    translate(100, 150);
    if (jugador1==m1)
    {
      monster1();
    } else if (jugador1==m2)
    {
      monster2();
    } else if (jugador1==m3)
    {
      monster3();
    } else if (jugador1==m4)
    {
      monster4();
    } else if (jugador1==m5)
    {
      monster5();
    } else if (jugador1==m6)
    {
      monster6();
    }
    popMatrix();

    pushMatrix();
    translate(500, 150);
    if (jugador2==m1)
    {
      monster1();
    } else if (jugador2==m2)
    {
      monster2();
    } else if (jugador2==m3)
    {
      monster3();
    } else if (jugador2==m4)
    {
      monster4();
    } else if (jugador2==m5)
    {
      monster5();
    } else if (jugador2==m6)
    {
      monster6();
    }
    popMatrix();


    if (jugador1[2]<=0)
    {
      fill(255);
      text("GANA JUGADOR 2 PRESIONA BARRA PARA EMPEZAR", 220, 50);
      if (jugador1[2] <= 0)
      {
        jugador1[2]=0;
      }
  } else if (jugador2[2]<=0)
    {
      fill(255);
      text("GANA JUGADOR 1 PRESIONA BARRA PARA EMPEZAR", 50, 50);
    if (jugador2[2] <= 0)
      {
        jugador2[2]=0;
      }  
  }
  }
}

void  monster1()
{
  //torso
  beginShape();
  fill(255);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);

  beginShape();
  fill(255,0,0);
  vertex(60,90);
  vertex(70,90);
  vertex(70,120);
  vertex(60,110);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(80,80);
  vertex(90,80);
  vertex(90,130);
  vertex(80,120);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(100,80);
  vertex(110,80);
  vertex(110,160);
  vertex(100,160);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(120,100);
  vertex(130,100);
  vertex(130,160);
  vertex(120,160);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(140,80);
  vertex(150,80);
  vertex(150,160);
  vertex(140,160);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(160,80);
  vertex(170,80);
  vertex(170,120);
  vertex(160,130);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(180,90);
  vertex(190,90);
  vertex(190,110);
  vertex(180,120);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(255);
  vertex(120,20);
  vertex(130,20);
  vertex(140,30);
  vertex(150,50);
  vertex(160,60);
  vertex(140,80);
  vertex(140,90);
  vertex(130,100);
  vertex(120,100);
  vertex(110,90);
  vertex(110,80);
  vertex(90,60);
  vertex(100,50);
  vertex(110,30);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(110,50);
  vertex(110,60);
  vertex(120,60);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(140,50);
  vertex(140,60);
  vertex(130,60);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,0);
  vertex(115,20);
  vertex(120,40);
  vertex(110,40);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,0);
  vertex(135,20);
  vertex(140,40);
  vertex(130,40);
  endShape(CLOSE);
    
  beginShape();
  fill(255);
  vertex(90,40);
  vertex(95,40);
  vertex(100,45);
  vertex(100,50);
  vertex(95,50);
  vertex(90,45);
  endShape(CLOSE);
  
  beginShape();
  fill(255);
  vertex(150,50);
  vertex(155,50);
  vertex(160,45);
  vertex(160,40);
  vertex(155,40);
  vertex(150,45);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(50,80,255);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(255);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(255);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  strokeWeight(2);
  line(120,70,125,75);
  line(125,75,130,70);
  line(125,75,125,80);
  line(120,90,130,90);
  
  //bra izq
  beginShape();
  fill(255);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(40,150);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(255);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(210,150);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
  
}

void monster2()
{
  //torso
  beginShape();
  fill(255,255,100);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);

 
  beginShape();
  fill(50,50,150);
  vertex(80,110);
  vertex(120,150);
  vertex(130,150);
  vertex(170,110);
  vertex(180,110);
  vertex(130,160);
  vertex(120,160);
  vertex(70,100);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(150,100,0);
  vertex(90,30);
  vertex(110,20);
  vertex(140,20);
  vertex(160,30);
  vertex(170,50);
  vertex(170,70);
  vertex(180,90);
  vertex(170,110);
  vertex(160,100);
  vertex(150,110);
  vertex(140,100);
  vertex(130,110);
  vertex(120,110);
  vertex(110,100);
  vertex(100,110);
  vertex(90,100);
  vertex(80,110);
  vertex(70,90);
  vertex(80,70);
  vertex(80,50);
  vertex(90,30);
  endShape(CLOSE);
  
  //ojoizq
  beginShape();
  fill(255,255,155);
  vertex(100,40);
  vertex(110,50);
  vertex(100,50);
  endShape(CLOSE);
  
  //ojoder
  beginShape();
  fill(255,255,155);
  vertex(150,40);
  vertex(150,50);
  vertex(140,50);
  endShape(CLOSE);
  
  //pico
  beginShape();
  fill(255,255,50);
  vertex(110,70);
  vertex(125,60);
  vertex(140,70);
  vertex(140,75);
  vertex(130,70);
  vertex(125,75);
  vertex(120,70);
  vertex(110,75);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,50);
  vertex(110,75);
  vertex(125,85);
  vertex(140,75);
  vertex(140,80);
  vertex(125,90);
  vertex(110,80);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,200);
  vertex(80,110);
  vertex(90,120);
  vertex(100,110);
  vertex(110,120);
  vertex(140,120);
  vertex(150,110);
  vertex(160,120);
  vertex(170,110);
  vertex(160,100);
  vertex(150,110);
  vertex(140,100);
  vertex(130,110);
  vertex(120,110);
  vertex(110,100);
  vertex(100,110);
  vertex(90,100);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(255,255,100);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(255);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(255);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  //bra izq
  beginShape();
  fill(150,100,0);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(40,150);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(150,100,0);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(210,150);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
}

void monster3() 
{
  //torso
  beginShape();
  fill(200,50,0);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(150,100,0);
  vertex(90,20);
  vertex(110,30);
  vertex(140,30);
  vertex(160,20);
  vertex(160,40);
  vertex(130,70);
  vertex(130,90);
  vertex(120,90);
  vertex(120,70);
  vertex(90,40);
  vertex(90,20);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,155);
  vertex(100,50);
  vertex(120,70);
  vertex(120,90);
  vertex(130,90);
  vertex(130,70);
  vertex(150,50);
  vertex(160,70);
  vertex(150,80);
  vertex(140,100);
  vertex(130,110);
  vertex(120,110);
  vertex(110,100);
  vertex(100,80);
  vertex(90,70);
  endShape(CLOSE);
  
  
  //ojoizq
  beginShape();
  fill(255,0,0);
  vertex(110,60);
  vertex(120,70);
  vertex(110,70);
  endShape(CLOSE);
  
  //ojoder
  beginShape();
  fill(255,0,0);
  vertex(130,70);
  vertex(140,60);
  vertex(140,70);
  endShape(CLOSE);
  
  //nariz
  beginShape();
  fill(0);
  vertex(120,90);
  vertex(130,90);
  vertex(130,95);
  vertex(125,100);
  vertex(120,95);
  vertex(120,90);
  endShape(CLOSE);
  
  //barba
  beginShape();
  fill(255,255,200);
  vertex(90,70);
  vertex(90,80);
  vertex(100,80);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,200);
  vertex(100,80);
  vertex(100,90);
  vertex(105,90);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,200);
  vertex(145,90);
  vertex(150,80);
  vertex(150,90);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,200);
  vertex(150,80);
  vertex(160,80);
  vertex(160,70);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(0);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(255);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(255);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  //bra izq
  beginShape();
  fill(150,100,0);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(30,160);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(150,100,0);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(220,160);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
}


void monster4() 
{
  //torso
  beginShape();
  fill(0,0,255);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);
  
  beginShape();
  fill(255,0,0);
  vertex(120,110);
  vertex(130,110);
  vertex(130,120);
  vertex(140,120);
  vertex(140,130);
  vertex(130,130);
  vertex(130,140);
  vertex(120,140);
  vertex(120,130);
  vertex(110,130);
  vertex(110,120);
  vertex(120,120);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(255);
  vertex(90,20);
  vertex(100,20);
  vertex(110,30);
  vertex(120,50);
  vertex(110,50);
  vertex(90,30);
  endShape(CLOSE);
  
  beginShape();
  fill(255);
  vertex(130,50);
  vertex(140,30);
  vertex(150,20);
  vertex(160,20);
  vertex(160,30);
  vertex(140,50);
  endShape(CLOSE);
  
  beginShape();
  fill(255);
  vertex(120,50);
  vertex(130,50);
  vertex(150,80);
  vertex(140,110);
  vertex(130,120);
  vertex(120,120);
  vertex(110,110);
  vertex(100,80);
  endShape(CLOSE);
  
  
  
  
  //ojoizq
  beginShape();
  fill(255,0,0);
  vertex(110,70);
  vertex(120,70);
  vertex(120,80);
  endShape(CLOSE);
  
  //ojoder
  beginShape();
  fill(255,0,0);
  vertex(130,70);
  vertex(130,80);
  vertex(140,70);
  endShape(CLOSE);
  
  //nariz
  beginShape();
  fill(0);
  vertex(120,107);
  vertex(123,110);
  vertex(126,110);
  vertex(130,107);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(255);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(0,0,255);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(0,0,255);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  //bra izq
  beginShape();
  fill(255);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(30,160);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(255);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(220,160);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
}

void monster5()
{
  //torso
  beginShape();
  fill(200,200,0);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);
  
  beginShape();
  fill(100,100,0);
  vertex(120,110);
  vertex(130,110);
  vertex(140,110);
  vertex(140,120);
  vertex(140,130);
  vertex(135,135);
  vertex(130,140);
  vertex(120,140);
  vertex(115,135);
  vertex(110,130);
  vertex(110,120);
  vertex(110,110);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(255,255,155);
  vertex(80,20);
  vertex(90,20);
  vertex(100,30);
  vertex(120,70);
  vertex(130,70);
  vertex(150,30);
  vertex(160,20);
  vertex(170,20);
  vertex(170,30);
  vertex(160,40);
  vertex(160,50);
  vertex(150,70);
  vertex(150,90);
  vertex(140,100);
  vertex(110,100);
  vertex(100,90);
  vertex(100,70);
  vertex(90,50);
  vertex(90,40);
  vertex(80,30);
  endShape(CLOSE);
  
  beginShape();
  fill(200,150,50);
  vertex(100,30);
  vertex(120,20);
  vertex(130,20);
  vertex(150,30);
  vertex(130,70);
  vertex(120,70);
  endShape(CLOSE);
  
  beginShape();
  fill(255,200,0);
  vertex(120,100);
  vertex(130,100);
  vertex(125,95);
  endShape(CLOSE);
  
  
  
  
  //ojoizq
  beginShape();
  fill(255);
  vertex(100,50);
  vertex(110,50);
  vertex(110,60);
  endShape(CLOSE);
  
  //ojoder
  beginShape();
  fill(255);
  vertex(140,50);
  vertex(140,60);
  vertex(150,50);
  endShape(CLOSE);
  
  //nariz
  beginShape();
  fill(0);
  vertex(120,70);
  vertex(130,70);
  vertex(130,75);
  vertex(125,80);
  vertex(120,75);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(200,200,0);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(255);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(255);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  //bra izq
  beginShape();
  fill(255,255,155);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(30,160);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,155);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(220,160);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
}


void monster6() 
{
  //torso
  beginShape();
  fill(0,150,50);
  vertex(80,80);
  vertex(170,80);
  vertex(180,90);
  vertex(190,90);
  vertex(200,100);
  vertex(180,120);
  vertex(170,120);
  vertex(160,130);
  vertex(160,160);
  vertex(90,160);
  vertex(90,130);
  vertex(80,120);
  vertex(70,120);
  vertex(50,100);
  vertex(60,90);
  vertex(70,90);
  endShape(CLOSE);

  //cara
  beginShape();
  fill(200,150,50);
  vertex(90,20);
  vertex(100,30);
  vertex(120,20);
  endShape(CLOSE);
  
  beginShape();
  fill(200,150,50);
  vertex(130,20);
  vertex(150,30);  
  vertex(160,20);
  endShape(CLOSE);
  
  beginShape();
  fill(200,150,50);
  vertex(170,30);
  vertex(170,80);
  vertex(160,100);
  vertex(150,100);
  vertex(150,110);
  vertex(130,110);
  vertex(130,120);
  vertex(120,120);
  vertex(120,110);
  vertex(100,110);
  vertex(100,100);
  vertex(90,100);
  vertex(90,80);
  vertex(80,80);
  vertex(80,30);
  vertex(90,40);
  vertex(90,50);
  vertex(100,70);
  vertex(100,90);
  vertex(140,100);
  vertex(150,90);
  vertex(150,70);
  vertex(160,50);
  vertex(160,40);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,155);
  vertex(80,20);
  vertex(90,20);
  vertex(100,30);
  vertex(120,20);
  vertex(130,20);
  vertex(150,30);
  vertex(160,20);
  vertex(170,20);
  vertex(170,30);
  vertex(160,40);
  vertex(160,50);
  vertex(150,70);
  vertex(150,90);
  vertex(140,100);
  vertex(110,100);
  vertex(100,90);
  vertex(100,70);
  vertex(90,50);
  vertex(90,40);
  vertex(80,30);
  endShape(CLOSE);
  
  //boca
  beginShape();
  fill(255,200,0);
  vertex(120,100);
  vertex(130,100);
  vertex(125,95);
  endShape(CLOSE);
  
  //ojoizq
  beginShape();
  fill(255);
  vertex(100,50);
  vertex(110,50);
  vertex(110,60);
  endShape(CLOSE);
  
  //ojoder
  beginShape();
  fill(255);
  vertex(140,50);
  vertex(140,60);
  vertex(150,50);
  endShape(CLOSE);
  
  //nariz
  beginShape();
  fill(0);
  vertex(120,70);
  vertex(130,70);
  vertex(130,75);
  vertex(125,80);
  vertex(120,75);
  endShape(CLOSE);
  
  //short
  beginShape();
  fill(255);
  vertex(90,160);
  vertex(160,160);
  vertex(150,170);
  vertex(170,190);
  vertex(150,190);
  vertex(140,180);
  vertex(110,180);
  vertex(100,190);
  vertex(80,190);
  vertex(100,170);
  endShape(CLOSE);
  
  //pierna der
  beginShape();
  fill(0,150,50);
  vertex(150,190);
  vertex(170,190);
  vertex(170,220);
  vertex(160,230);
  vertex(150,230);
  vertex(140,220);
  vertex(140,200);
  endShape(CLOSE);
  
  //pierna izq
  beginShape();
  fill(0,150,50);
  vertex(80,190);
  vertex(100,190);
  vertex(110,200);
  vertex(110,220);
  vertex(100,230);
  vertex(90,230);
  vertex(80,220);
  endShape(CLOSE);
  
  //pie izq
  beginShape();
  fill(0);
  vertex(80,230);
  vertex(100,230);
  vertex(100,240);
  vertex(70,240);
  endShape(CLOSE);
  
  //pie der
  beginShape();
  fill(0);
  vertex(150,230);
  vertex(170,230);
  vertex(180,240);
  vertex(150,240);
  endShape(CLOSE);
  
  //bra izq
  beginShape();
  fill(255,255,155);
  vertex(60,110);
  vertex(70,120);
  vertex(50,150);
  vertex(50,160);
  vertex(40,160);
  vertex(30,160);
  vertex(30,150);
  vertex(30,140);
  vertex(40,140);
  endShape(CLOSE);
  
  beginShape();
  fill(255,255,155);
  vertex(180,120);
  vertex(190,110);
  vertex(210,140);
  vertex(220,140);
  vertex(220,150);
  vertex(220,160);
  vertex(210,160);
  vertex(200,160);
  vertex(200,150);
  endShape(CLOSE);
}


void keyPressed()
{
  if (keyCode==ALT)
  {
    pantalla=1;
  }

  if (turno==0&&pantalla==2)
  {
    if (key=='q'||key=='Q')
    {
      jugador2[2]=jugador2[2]-jugador1[0];
      println(jugador2[2]);
      turno=1;
    }
    
  }
  if (turno==1&&pantalla==2)
  {
    if (key=='p'||key=='P')
    {
      jugador1[2]=jugador1[2]-jugador2[0];
      println(jugador1[2]);
      turno=0;
    } 
    
  }

  if (jugador1[2]<=0||jugador2[2]<=0)
  {
    if (key==' ') {
      pantalla=0;
      m1[2] = 150;
      m2[2] = 150;
      m3[2] = 150;
      m4[2] = 150;
      m5[2] = 150;
      m6[2] = 150;
      seleccion = 0;
    }
  }
}

void mouseClicked()
{
  if (pantalla==1)
  {
    //Monster1
    if (mouseX>0&&mouseX<300&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=m1;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=m1;
        pantalla=2;
      }
    }

    //Monster2
    if (mouseX>300&&mouseX<600&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=m2;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=m2;
        pantalla=2;
      }
    }

    //Monster3
    if (mouseX>600&&mouseX<1000&&mouseY>0&&mouseY<400)
    {
      if (seleccion==0)
      {
        jugador1=m3;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=m3;
        pantalla=2;
      }
    }

    //Monster4
    if (mouseX>0&&mouseX<300&&mouseY>400&&mouseY<800)
    {
      if (seleccion==0)
      {
        jugador1=m4;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=m4;
        pantalla=2;
      }
    }

    //Monster5
    if (mouseX>300&&mouseX<600&&mouseY>400&&mouseY<800)
    {
      if (seleccion==0)
      {
        jugador1=m5;
        seleccion=1;
      } else if (seleccion==1)
      {
        jugador2=m5;
        pantalla=2;
      }
    }

    //Monster6
    if (mouseX>600&&mouseX<1000&&mouseY>400&&mouseY<800)
    {
      if (seleccion==0)
      {
        jugador1=m6;
        seleccion=1;
      } else if (seleccion==1)
      {
        //P2
        jugador2=m6;
        pantalla=2;
      }
    }
  }
}