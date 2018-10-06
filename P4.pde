String cantidad = " Recolecte: ";

class P4 {
  void conclusion(){
    
    background (189,236,246);
    image(img4,0,-10);
    
    //Presion K para ir a la pantalla de inicio
    fill(0);
    textSize(30);
    text("Presiona K para ir al inicio",310 ,490);
    
    // Interaccion con el jugador ya que escribe cuantos recolecto
    fill(137,22,0);
    textSize(60);
    rotate(-0.10472);
    text(cantidad, 370, 455, 530, 300);
    
    //Texto
    rotate(-0.0174533);
    text("huevos", 190,460);
    
    //Cambio de pantalla y reinicio
    if (key =='K'|| key =='k'){
      p=1;
      cantidad = " Recolecte: ";
      inicio = 0;
      limite = 15000;
      value = 0;
    }
    
  }
 
}

// Interaccion con el jugador ya que escribe cuantos recolecto
void keyTyped() {
  if ((key >= '0' && key <= '9') || key == ' ') {
    cantidad = cantidad + key;
  }
}
