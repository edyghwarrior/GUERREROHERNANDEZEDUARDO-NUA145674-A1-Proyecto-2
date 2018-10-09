void cuchillo(){
  float a = random(c1);
  float b1 = random(c2);
  float c = random(c3);
  float d = random(c4);
  
  if (0.1 > a && i1) {
    Box p = new Box(random(150,650),100);
    boxes.add(p);
    p.attract(400,400);
  }
  
  if (0.1 > b1 && i2) {
    Box p = new Box(random(150,650),700);
    boxes.add(p);
    p.attract(400,400);
  }
  
  if (0.1 > c && i3) {
    Box p = new Box(100,random(150,650));
    boxes.add(p);
    p.attract(400,400);
  }
  
  if (0.1 > d && i4) {
    Box p = new Box(700,random(150,650));
    boxes.add(p);
    p.attract(400,400);
  }
  
  for (Boundary wall: boundaries) {
    wall.display();
  }


  for (Box b: boxes) {
    b.display();
  }
  
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }

  
  if (keyPressed){
  switch(key){
    case 'w':
    
    imageMode(CENTER);
    image(nube1,400,725);
    
    for (Box b: boxes) {
     Vec2 wind = new Vec2(0,20+e2);
     b.applyForce(wind);
    }
     
    break;
    
    case 'a':
    
    imageMode(CENTER);
    image(nube3,700,400);
    
    for (Box b: boxes) {
     Vec2 wind = new Vec2(-20-e2,0);
     b.applyForce(wind);
    }
    break;
    
    case 's':
    
    imageMode(CENTER);
    image(nube2,400,100);
    
    for (Box b: boxes) {
     Vec2 wind = new Vec2(0,-20-e2);
     b.applyForce(wind);
    }
    break;
    
    case 'd':
    
    imageMode(CENTER);
    image(nube4,100,400);
    
    for (Box b: boxes) {
     Vec2 wind = new Vec2(20+e2,0);
     b.applyForce(wind);
    }
    break;
    }
   } 
}

// Collision event functions!
void beginContact(Contact cp) {
  // Get both shapes
  Fixture f1 = cp.getFixtureA();
  Fixture f2 = cp.getFixtureB();
  // Get both bodies
  Body b1 = f1.getBody();
  Body b2 = f2.getBody();

  // Get our objects that reference these bodies
  Object o1 = b1.getUserData();
  Object o2 = b2.getUserData();

  if (o1.getClass() == Boundary.class) {
    Box p = (Box) o2;
    p.delete();
    vida--;
    
    if(vida==0){
    z1=0;
    z2=0;
    e2=0;
    e1=0;
    e3=1;
    vida=9;
    
    pa=4;
    
    }
  }
  if (o2.getClass() == Boundary.class) {
    Box p = (Box) o1;
    p.delete();
    vida--;
    
    if(vida==0){
    z1=0;
    z2=0;
    e2=0;
    e1=0;
    e3=1;
    i2=false;
    i3=false;
    i4=false;
    vida=9;
    
    pa=4;
    
    }
  }
}

void reloj(){
  int seconds = (startingTime - zx) / 1000;
  int minutes = seconds / 60;
  int hours = minutes / 60;
  int days = hours / 24;

  seconds -= minutes * 60;
  minutes -= hours * 60;
  hours -= days * 24;
  
  if(seconds>=10){

  String message = prefix +
      minutes + ":" +
      seconds + "!";
  fill(#224488);
  text(message, 600, 50);
  }
  
  if(seconds<10){

  String message = prefix +
      minutes + ":" + "0" +
      seconds + "!";
  fill(#224488);
  text(message, 600, 50);
  }
  
}

  String GetPlural(int value, String word)
{
  if (value == 1)
    return value + " " + word;
  return value + " " + word + "s";
}
