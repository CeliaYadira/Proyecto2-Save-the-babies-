class P3 {
  void juego(){
    
    background(0);
    image(img3,0,0);
    
    //Crónometro
    if(inicio == 0){
      fill(0);
    }
    else{
      transcurso = millis() - inicio;
      if(transcurso<limite){
        textSize(35);
        fill(0);
        text(transcurso,290,78);
    }
    else{ p=4;
    }
    }
    
    //Box2d (limites)
    for (Boundary wall: boundaries) {
      wall.display();
      box2d.step();
    }
    
    //Box2d (Particulas)
    if (random(1) < 0.1) {
      float sz = random(15,15);
      particulas.add(new Particula(random(width), -10, sz));
    }

    for (int i = particulas.size()-1; i >= 0; i--) {
      Particula p = particulas.get(i);
      p.display();
    }
  
  //Box2d Cuerda
    if (mousePressed) {
      cuerda.update(mouseX,mouseY);
    } 
    box.display();
 
  }
}

void keyPressed(){
  if (value ==0){
    inicio=millis();
  }
}
  
  
