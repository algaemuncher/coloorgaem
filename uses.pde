void clicked() {
  mouseRelease = false;
  if (mousePressed) pressed = true;
  if (pressed && mousePressed==false) {
    mouseRelease = true;
    pressed = false;
  }
}
