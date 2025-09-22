color red = #FF0000;
color blue = #0000FF;
color green = #00FF00;
color orange = #FF8400;
color yellow = #FFFF00;
color purple = #A900FF;
color timberwolf = #EADEDA;
color periwinkle = #CBBAED;

String[] words= {"red", "blue", "green","orange", "yellow", "purple","timberwolf","periwinkle"};
color[] colors= {red, blue, green, orange, yellow, purple,timberwolf,periwinkle};
int r, r2;
float textSize=30;
int matching;

int score = 0;

final int intro = 0;
final int game = 1;
final int gameO = 2;
int mode=intro;

void setup() {
  size(600, 600);
  background(0);
  textAlign(CENTER);
  word_gen();
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameO) {
    gameO();
  }
}

void game() {
  if (textSize<300) {
    background(0);
    textSize(textSize);
    fill(colors[r]);
    text(words[r2], 300, 300);
    textSize+=3;
  } else if (textSize>100 || textSize == 100){
    mode = gameO;
  }
 
}

void word_gen() {
  textSize = 30;
  matching = int(random(0, 2));
  r = int(random(0, colors.length));
  if (matching == 0) {
    r2 = r;
  } else if (matching == 1) {
    r2 = int(random(0, colors.length));
    while (r==r2) {
      r2 = int(random(0, colors.length));
    }
  }
}
