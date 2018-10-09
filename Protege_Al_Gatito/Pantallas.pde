class Pantalla{
    
    Pantalla(){}
    
  void fondo(){
    
  if(pa==0){
        tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        imageMode(CENTER);
        image(pa1,400,400);
        fill(0);
        pushMatrix();
        scale(tx);
        textFont(fuente2);
        textSize(60);
        text("JUGAR",315,675);
        popMatrix();
  startingTime = 181000; 
  if (mousePressed){
    if(mouseX>=287.5 && mouseX<=512.5 && mouseY>=600 && mouseY<=700){
  pa=1;
    }
   }
  }
  
  if(pa==1){
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        imageMode(CENTER);
        image(pa2,400,400);
        fill(0);
        pushMatrix();
        scale(tx);
        textFont(fuente2);
        textSize(60);
        text("LISTO",590,725);
        popMatrix();
    if (mousePressed){
    if(mouseX>=550 && mouseX<=775 && mouseY>650 && mouseY<=750){
    pa=2;
    }
   }
  }
  
  if(pa==2){
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        imageMode(CENTER);
        image(pa3,400,400);
        fill(0);
        pushMatrix();
        scale(tx);
        textFont(fuente2);
        textSize(60);
        text("ENTER",300,500);
        popMatrix();
    if (keyPressed){
    if(key==ENTER){
    x1=1;
    pa=3;
    }
   }
  }
  
  if(pa==3){
    
    textSize(24);
    background(200,225,250);
    m=2;
    
    image(signo,595,40);
    
    cuchillo();
    vidas();
    calculo2();
    reloj();
    
  }
  
  if(pa==4){
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
    imageMode(CENTER);
    image(pf,400,400);
    fill(0);
        pushMatrix();
        scale(tx);
        textFont(fuente2);
        textSize(30);
        text("INICIO - ENTER",500,700);
        popMatrix();
    for (Box b: boxes) {
     Vec2 wind = new Vec2(100000,100000);
     b.applyForce(wind);
    }
    vida=9;
    if (keyPressed){
    if(key==ENTER){
    pa=0;
    }
   }
  }
  
  if(pa==5){    
    for (Box b: boxes) {
     Vec2 wind = new Vec2(100000,100000);
     b.applyForce(wind);
    }
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
    vida=9;
    image(pw,0,0);
    fill(0);
        pushMatrix();
        scale(tx);
        textFont(fuente2);
        textSize(30);
        text("INICIO - ENTER",500,700);
        popMatrix();
    if (keyPressed){
    if(key==ENTER){
    pa=0;
    }
   }
  }
 }
 
   void vidas(){
   if(vida==9){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40); image(corazon,200,40); image(corazon,240,40);
     image(corazon,280,40); image(corazon,320,40); image(corazon,360,40);
   }
   if(vida==8){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40); image(corazon,200,40); image(corazon,240,40);
     image(corazon,280,40); image(corazon,320,40);
   }
   if(vida==7){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40); image(corazon,200,40); image(corazon,240,40);
     image(corazon,280,40);
   }
   if(vida==6){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40); image(corazon,200,40); image(corazon,240,40);
   }
   if(vida==5){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40); image(corazon,200,40);
   }
   if(vida==4){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
     image(corazon,160,40);
   }
   if(vida==3){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40); image(corazon,120,40);
   }
   if(vida==2){
     imageMode(CENTER);
     image(corazon,40,40); image(corazon,80,40);
   }
   if(vida==1){
     imageMode(CENTER);
     image(corazon,40,40);
   }
  }
}
