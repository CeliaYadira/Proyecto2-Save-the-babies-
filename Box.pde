class Box {

  Body b;
  float w;
  float h;

  // Constructor
  Box(float x_, float y_) {
    float x = x_;
    float y = y_;
    w = 100;
    h = 10;
    
    cuerpo(new Vec2(x, y), w, h);
  }

  void cuerpo (Vec2 center, float w_, float h_) {
    
    //Definir mi body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    
    //Crear el body
    b = box2d.createBody(bd);

    // Definir la forma
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    //Definir el fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
    
    //Agregar todo a mi body
    b.createFixture(fd);
  }
  
    void display() {
    Vec2 pos = box2d.getBodyPixelCoord(b);
    float a = b.getAngle();

    rectMode(PConstants.CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(0);
    stroke(0);
    rect(0, 0, w, h);
    popMatrix();
  }
}
