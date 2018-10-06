class P2 {
  void instrucciones(){
    
    background (0);
    image(img2,0,0);
    
    //Texto: Instrucciones
    textSize(30); 
    fill(0);
    text(" Instrucciones ", 140, 87);
    
    //Instrucciones
    textSize(20); 
    fill(0);
    text("Tienes 15 segundos para:", 30, 200);
    
    text(" 1.- Selecciona la barra y coloca la", 30, 240);
    text("mayor cantidad de huevos en la",70, 265);
    text("canasta que se encuentra en la izquierda",70, 290);
    
    text(" Al final aparecerá una pantalla donde escribirás cuantos", 30, 330);
    text("recolectaste",70,355);
    
    //Presiona B para continuar
    textSize(25); 
    fill(83,9,0);
    text(" Presiona B para continuar ", 192, 455);

    
    //Cambio de pantalla
    if (key =='B'|| key =='b'){
      p=3;
    }
  
  }

}
