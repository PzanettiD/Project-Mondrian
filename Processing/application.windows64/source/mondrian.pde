//Tabela de Números para as Cores dos quadrantes
float num1  = 255;
float num2  = 255;
float num3  = 255;
float num4  = 255;
float num5  = 255;
float num6  = 255;
float num7  = 255;
float num8  = 255;
float num9  = 255;
float num10 = 255;
float num11 = 255;

void setup(){
  size(1000, 1000);
  stroke (0);
  fill(0);
  strokeWeight(6);
  
}

//Ellipses
float radius;
float radius1;
float radius2;
float radius3;

//Linha 1 (Horizontal)
float x = 500;
float y;


//Linha 2 (Vertical)
float x1;
float y1 = 500;

void draw(){
  background (255);
  translate (width/2, height/2);  
  
  //Linha 1
  line(x, y, -x, y);
  //Linha 2
  line(x1, y1, x1, -y1);
  
 
  
  //Retângulos nos quadrantes
  
  //Quadrante nº1
  fill (num1, num2, num3);
  rect (x1, y, x-x1, -y1-y);
 
  
  //Quadrante nº2
  fill (num3, num4, num5);
  rect (x1, y, x-x1, y1-y);
  
 
  //Quadrante nº3
  fill (num6, num7, num8);
  rect (x1, y, -x-x1, y1-y);
  
 
  //Quadrante nº4
  fill (num9, num10, num11);
  rect(x1, y, -x-x1, -y1-y);
  
   //Ellipses nos Quadrantes
  
  //Quadrante 1
  fill (num3, num4, num5);
  ellipse (-(-x-x1)/2.0, -(y1-y)/2.0, radius, radius);
  
  //Quadrante 2
  fill (num6, num7, num8);
  ellipse (-(-x-x1)/2.0, -(-y1-y)/2.0, radius1, radius1);
  
  //Quadrante 3
  fill (num9, num10, num11);
  ellipse (-(x-x1)/2.0, -(-y1-y)/2.0, radius2, radius2);
  
  //Quadrante 4
  fill (num1, num2, num3);
  ellipse (-(x-x1)/2.0, -(y1-y)/2.0, radius3, radius3);
  
  
}

void mousePressed(){
   y       = random (-500, 500);   
   x1      = random (-500, 500);
   num1    = random (0, 255);
   num2    = random (0, 255);
   num3    = random (0, 255); 
   num4    = random (0, 255);
   num5    = random (0, 255);
   num6    = random (0, 255);
   num7    = random (0, 255);
   num8    = random (0, 255); 
   num9    = random (0, 255);
   num10   = random (0, 255);
   num11   = random (0, 255);
   radius  = random (30,300);
   radius1 = random (30,300);
   radius2 = random (30,300);
   radius3 = random (30,300);
}
