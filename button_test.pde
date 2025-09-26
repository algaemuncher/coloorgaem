Button[] black;
int n = 10;

boolean mouseRelease;
boolean pressed;

color gray = color(142);
color bc = gray;

color blue = #0000FF;
color green = #00FF00;
color orange = #FF8400;
color yellow = #FFFF00;
color purple = #A900FF;
color red = color(255, 0, 0);
color white = color(255);

String[] Wcolors ={"blue", "green", "orange", "yellow", "purple", "red", "white"};
color[] Colors ={blue, green, orange, yellow, purple, red, white};

void setup() {
  size(600, 600);
  background(bc);
  black = new Button[n];
  for (int i = 0; i<n; i++) {
    int r = int(random(6));
    int j=int(random(6));
    while (j==r) {
      j = int(random(6));
    }
    black[i] = new Button(Wcolors[r], random(0, width), random(0, height), 150, 100, Colors[j], color(Colors[r]));
  }
}

void draw() {
  background(bc);
  clicked();
  for (int i = 0; i<n; i++) {
    black[i].show();
  }
  for (int i = 0; i<n; i++) {
    if (black[i].click) {
      bc = black[i].tact;
    }
  }
}
