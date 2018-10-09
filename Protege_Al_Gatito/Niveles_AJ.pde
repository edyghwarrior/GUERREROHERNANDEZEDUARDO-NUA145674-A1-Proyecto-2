void calculo(){
  
  if (x1==1){
  y1=millis();
  x1=0;
  e1=1;
}

  if(e1==1){
  z1=(millis()-y1)/1000;
  zx=int((millis()-y1));
  }
}

void calculo2(){
  if(z1==0){
  i1=true;
  c1=12;
  e2=10;
  }
  
  else if(z1>20 && z1<40){
    z2=100;
    e2=20;
    e3=5;
    i2=true;
    c1=10;
    c2=15;
  }
  
  else if(z1>40 && z1<60){
    z2=300;
    e2=40;
    e3=7;
    i3=true;
    c1=12;
    c2=12;
    c3=15;
  }
  
  else if(z1>60 && z1<90){
    z2=500;
    e2=60;
    e3=10;
    i4=true;
    c1=12;
    c2=12;
    c3=15;
    c4=15;
  }
  
  else if(z1>90 && z1<150){
    z2=700;
    e2=80;
    e3=15;
    c1=10;
    c2=10;
    c3=10;
    c4=10;
  }
  
  else if(z1>150 && z1<180){
    z2=900;
    e2=100;
    e3=20;
    c1=5;
    c2=5;
    c3=5;
    c4=5;
  }
  
  else if(z1>180){
    z1=0;
    z2=0;
    i2=false;
    i3=false;
    i4=false;
    e2=0;
    e1=0;
    e3=1;
    vida=9;
    
    pa=5;
    
    
  }
}
