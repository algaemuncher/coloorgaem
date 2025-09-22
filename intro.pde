void intro() {
  background(0);

  if (dist(mouseX, mouseY, 300, 300)<200) {
    stroke(0,255,0);
    if (dist(mouseX, mouseY, 300, 300)<75) {
      stroke(0,0,255);
    }
    fill(255);
    circle(300, 300, 75);
  }
}
