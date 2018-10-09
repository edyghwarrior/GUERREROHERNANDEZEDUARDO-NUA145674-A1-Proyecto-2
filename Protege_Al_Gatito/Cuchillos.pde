class Box {

  Body body;
  float w;
  float h;
  boolean delete = false;


  Box(float x, float y) {
    w = 22;
    h = 50;
    makeBody(new Vec2(x,y),w,h);
    body.setUserData(this);
  }

  void killBody() {
    box2d.destroyBody(body);
  }
  
  void delete() {
    delete = true;
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(body);  
    if (pos.y > height+max(w,h) || pos.y < 0-max(w,h) || delete) {
      killBody();
      return true;
    }
    if (pos.x > width+max(w,h) || pos.x < 0-max(w,h) || delete) {
      killBody();
      return true;
    }
    
    return false;
  }

  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = body.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 500+z2);
    body.applyForce(worldTarget, bodyVec);
  }
  
   void applyForce(Vec2 force) {
    Vec2 pos = body.getWorldCenter();
    body.applyForce(force, pos);
  }


  
  void display() {
    
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    float a = body.getAngle();

    imageMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    image(cuchillo,0,0);
    popMatrix();
  }

  
  void makeBody(Vec2 center, float w_, float h_) {
    
    BodyDef bd = new BodyDef();
    bd.position.set(box2d.coordPixelsToWorld(center));
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    fd.density = 0.1;
    fd.friction = 0.9;
    fd.restitution = 0.01;
    
    body.createFixture(fd);
    
    body.setAngularVelocity(e3);
  }
  
}
