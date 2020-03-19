void setup() {
  
 size (1680,1000);

}



float ix = 200;
   float rPhase = 0;
   float gPhase = 0;
   float bPhase = 0;
   float rLenght = 0;
   float gLenght = 0;
   float bLenght = 0;
void draw() {
 

  
   float cr = 0;
   float cg = 0;
   float cb = 0;
   
  
   float x = 0;
   float ay = 0;

   
  
 

  if (mousePressed == true) {
    ix = ix+20;
  }
  
  if ( keyPressed) { 
    
    if (key == 'a') { rLenght = rLenght + 0.1; }
    if (key == 'z') { rLenght = rLenght - 0.1; }
    if (key == 's') { gLenght = gLenght + 0.1; }
    if (key == 'x') { gLenght = gLenght - 0.1; }
    if (key == 'd') { bLenght = bLenght + 0.1; }
    if (key == 'c') { bLenght = bLenght - 0.1; }
    
    if (key == '1') { rPhase = rPhase + 0.1; }
    if (key == 'q') { rPhase = rPhase - 0.1; }
    if (key == '2') { gPhase = gPhase + 0.1; }
    if (key == 'w') { gPhase = gPhase - 0.1; }
    if (key == '3') { bPhase = bPhase + 0.1; }
    if (key == 'e') { bPhase = bPhase - 0.1; }
    
    if (key == 'o') { rPhase = 0; rLenght = 0;}
    if (key == 'o') { gPhase = 0; gLenght = 0;}
    if (key == 'o') { bPhase = 0; bLenght = 0;}
    
    if (rPhase > 10 || rPhase < -10) {rPhase = 0;}
    if (rLenght > 10 || rLenght < -10) {rLenght = 0;}
    if (gPhase > 10 || gPhase < -10) {gPhase = 0;}
    if (gLenght > 10 || gLenght < -10) {gLenght = 0;}
    if (bPhase > 10 || bPhase < -10) {bPhase = 0;}
    if (bLenght > 10 || bLenght < -10) {bLenght = 0;}
    
    
      
  
  }
 
 for (int i=0;i<ix;i++){
   
    x = x+1;
    cr = sin ((x * PI/(ix*rPhase))+ PI*rLenght) * 256;
    cg = sin ((x * PI/(ix*gPhase))+ PI*gLenght) * 256;
    cb = sin ((x * PI/(ix*bPhase))+ PI*bLenght) * 256;
    
    ay = sin ((x* (PI/(2*ix))+ PI/2)) * 256;
      
     stroke (cr,cg,cb); 
     line(i,0,i,1000);
 }

loop();

 }
 
 

 
