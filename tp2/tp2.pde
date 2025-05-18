PImage Imagen, Imagen2, Imagen3, Imagen4, Imagen5;
PFont mitexto1,mitexto2,mitexto3;
int posY = 0;
int posY2 = 480;
int posY3 = 0;
int posY4 = 480;
int posY5 = 0;
int Tiempo = 400;
int estado = 1;

void setup() {
  size(640, 480);
  Imagen = loadImage("imagen1.jpeg");
  Imagen2 = loadImage("imagen2.jpg");
  Imagen3 = loadImage("imagen3.png");
  Imagen4 = loadImage("imagen4.jpeg");
  Imagen5 = loadImage("imagen5.png");
  mitexto1 = loadFont("CorbelLight-Italic-48.vlw");
  mitexto2 = loadFont("Gabriola-48.vlw");
  mitexto3 = loadFont("SegoeUI-Semilight-48.vlw");
  
}

void draw() {
  background(0);

  if (estado == 1) {
    Tiempo--;
    image(Imagen, 0, 0, 640, 480);
    textFont(mitexto3);
    fill(#EDF4F5);
    textSize(41);
    text("Autor: Antoine de Saint-Exupéry \nPublicado en 1943 \nEl principito ", 10, posY, 630, 480);
    posY = posY + 1;
    if (Tiempo <= 200) {
      estado = 2;
      Tiempo = 200;
      posY2 = 480; // Reiniciamos la posición del texto para la siguiente imagen
    }
  } else if (estado == 2) {
    Tiempo--;
    image(Imagen2, 0, 0, 640, 480);
    textFont(mitexto1);
    fill(#F1FAB1);
    textSize(30);
    text("Un piloto varado en el desierto conoce a un niño misterioso, el Principito, que le cuenta sobre su hogar en un pequeño asteroide y sus viajes a otros planetas, donde se encontró con adultos extraños y absortos en sus propias vanidades y ocupaciones sin sentido.", 10, posY2, 615, 480);
    posY2 = posY2 - 1;
    if (Tiempo <= 0) {
      estado = 3;
      Tiempo = 200;
      posY3 = 0; // Reiniciamos la posición del texto para la siguiente imagen
    }
  } else if (estado == 3) {
    Tiempo--;
    image(Imagen3, 0, 0, 640, 480);
    textFont(mitexto2);
    fill(#050505);
    textSize(35);
    text("En su visita a la Tierra, el Principito aprende sobre la naturaleza humana y el significado de las relaciones a través de su encuentro con un zorro. El zorro le enseña la importancia de domesticar y crear lazos, resaltando que lo esencial es invisible a los ojos y se revela a través del corazón.", 10, posY3, 630, 480);
    posY3 = posY3 + 1;
    if (Tiempo <= -200) {
      estado = 4;
      Tiempo = 200;
      posY4 = 480; // Reiniciamos la posición del texto para la siguiente imagen
    }
  } else if (estado == 4) {
    Tiempo--;
    image(Imagen4, 0, 0, 640, 480);
    textFont(mitexto1);
    fill(#050505);
    textSize(28);
    text("El Principito comparte con el piloto su profunda conexión con una única rosa en su planeta, revelando su comprensión del amor, la responsabilidad y el valor del tiempo dedicado a lo que uno ama. Esta relación contrasta con las interacciones superficiales que observó en otros asteroides.", 10, posY4, 630, 480);
    posY4 = posY4 - 1;
    if (Tiempo <= -400) { // Ajustamos el tiempo para la última imagen
      estado = 5;
      Tiempo = 200;
      posY5 = 0; // Reiniciamos la posición del texto para la siguiente imagen
    }
  } else if (estado == 5) {
    image(Imagen5, 0, 0, 640, 480);
    textFont(mitexto3);
    fill(#050505);
    textSize(32);
    text("Tras un año en la Tierra, el Principito añora regresar a su asteroide para cuidar de su rosa. Con la ayuda de una serpiente, se despide del piloto y deja su cuerpo terrenal, dejando al piloto con las valiosas lecciones aprendidas sobre la amistad, el amor y la verdadera esencia de las cosas.", 10, posY5, 630, 480);
    posY5 = posY5 + 1;
    if (Tiempo <= -600) { // Ajustamos el tiempo para que la animación termine o se repita
      estado = 1; // Volvemos al primer estado para repetir la animación
      Tiempo = 400;
      posY = 0; // Reiniciamos la posición del texto de la primera imagen
    }
  }
}
