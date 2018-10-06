class Cuerda {

  MouseJoint mouseJoint;

  Cuerda() {
    mouseJoint = null;
  }

  // Si existe
  void update(float x, float y) {
    if (mouseJoint != null) {
      Vec2 mouseWorld = box2d.coordPixelsToWorld(x,y);
      mouseJoint.setTarget(mouseWorld);
    }
  }
  
   void enlace(float x, float y, Box box) {
    // Definir la articulación
    MouseJointDef md = new MouseJointDef();
    
    md.bodyA = box2d.getGroundBody();
    md.bodyB = box.b;
    Vec2 mp = box2d.coordPixelsToWorld(x,y);
    md.target.set(mp);
    // Some stuff about how strong and bouncy the spring should be
    md.maxForce = 10000.0 * box.b.m_mass;
    md.frequencyHz = 50.0;
    md.dampingRatio = 0.9;

    mouseJoint = (MouseJoint) box2d.world.createJoint(md);
  }

  void display() {
    if (mouseJoint != null) {
      Vec2 v1 = new Vec2(0,0);
      mouseJoint.getAnchorA(v1);
      Vec2 v2 = new Vec2(0,0);
      mouseJoint.getAnchorB(v2);
      // Conversion de coordenadas
      v1 = box2d.coordWorldToPixels(v1);
      v2 = box2d.coordWorldToPixels(v2);
    }
  }

}
