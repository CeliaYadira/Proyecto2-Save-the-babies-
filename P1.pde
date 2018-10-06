class P1 {
  void inicio(){
    
    background (0);
    image(img1,0,0);
    
    //Título
    textSize(50); 
    fill(83,9,0);
    text(" SAVE THE BABIES", 10, 120);

    
    //Presiona A para continuar
    textSize(25); 
    fill(83,9,0);
    text(" Presiona A para continuar ", 190, 455);
    
    //Cambio de pantalla
    if (key =='A'|| key =='a'){
      p=2;
    }
    
  }
  
}
