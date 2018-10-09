class Boundary {

  float x;
  float y;
  float r;
  
  Body b;

  Boundary(float x_,float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;


    BodyDef bd = new BodyDef();
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    bd.type = BodyType.STATIC;
    b = box2d.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    FixtureDef fd = new FixtureDef(); 
    fd.shape = cs;
    
    b.createFixture(fd);
    b.setUserData(this);
  }

  void display() {
    imageMode(CENTER);
    image(gatito1,400,400);
  }

}
