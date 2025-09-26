class Button {
  float x, y, w, h;
  boolean click;
  color tact, norm;
  String txt;

  Button(String t, float xc, float yc, float wc, float hc, color normal, color tactile) {
    x = xc;
    y = yc;
    w = wc;
    h = hc;
    txt = t;
    tact = tactile;
    norm = normal;
    click = false;
  }

  void show() {
    rectMode(CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(tact);
    } else {
      fill(norm);
    }
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h);

    //text label
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(norm);
    } else {
      fill(tact);
    }
    textSize(w/3);
    text(txt, x, y);
    if (mouseRelease && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      click = true;
    } else {
      click = false;
    }
  }

  void ajouter() {
  }
}
