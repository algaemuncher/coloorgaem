void mouseReleased() {
  if (mode == intro) {
    if (dist(mouseX,mouseY,300,300)<75){
      mode = game;
    }
  } else if (mode == game) {

    if (matching == 0) {
      if (mouseX <= 300) {
        score+=1;
        word_gen();
      } else if (mouseX >300) {
        mode = gameO;
      }
    } else if (matching == 1 ) {
      if (mouseX >300) {
        score+=1;
        word_gen();
      } else if (mouseX <= 300) {
        mode =gameO;
      }
    }
  } else if (mode == gameO) {
    textSize = 30;
    mode = game;
  }
}
