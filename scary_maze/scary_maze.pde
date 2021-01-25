int x=100;
int y=100;
PImage  scarypic;
boolean lv1 = true;
boolean lv2 = false;
boolean lv3 = false;
boolean scry = false;

void setup() {
  size(600, 600);
}

void draw() {
  if (lv1) {
    lvl1();
  }
  if (lv2){
    lvl2();
  }
  if (lv3){
    lvl3();
  }
  if (scry){
    scary();
  }
}

void lvl1() {
  background(255);
  fill(0);
  rect(0, 150, 450, 100);
  rect(0, 0, 50, 600);
  rect(0, 0, 600, 50);
  rect(550, 50, 50, 300);
  rect(150, 350, 500, 100);
  rect(50, 550, 550, 50);
  noStroke();
  fill(255, 0, 0);
  frameRate(30);
  ellipse(x, y, 20, 20);
  //if (x<600){
  //  if (red(get(x+11, y))<160 || red(get(x-11, y))<160 || red(get(x-11, y))<160 || red(get(x, y+11))<160) {
  //  x=100;
  //  y=100;
  //  }
  //}
  if (keyPressed) {
    if (key=='w') {
      y=y-10;
    }
    if (key=='s') {
      y=y+10;
    }
    if (key=='a') {
      x=x-10;
    }
    if (key=='d') {
      x=x+10;
    }
  }
  if (x>=590){
    lv1 = false;
    lv2 = true;
    lv3 = false;
    scry = false;
  }
}

void lvl2() {
  background(255);
  fill(0);
  rect(0, 0, 600, 50);
  rect(550,0,50,500);
  rect(0,130,470,70);
  rect(130,290,600,70);
  rect(0,200,50,300);
  rect(0,450,470,200);
  rect(0,550,600,50);
  noStroke();
  fill(255, 0, 0);
  ellipse(x-10, y-5, 20, 20);
  if (x<600){
    if (red(get(x+11, y))<160 || red(get(x-11, y))<160 || red(get(x-11, y))<160 || red(get(x, y+11))<160) {
    x=90;
    y=95;
    }
  }
  if (keyPressed) {
    if (key=='w') {
      y=y-10;
    }
    if (key=='s') {
      y=y+10;
    }
    if (key=='a') {
      x=x-10;
    }
    if (key=='d') {
      x=x+10;
    }
  }
  if (x>=590){
    lv1 = false;
    lv2 = false;
    lv3 = true;
    scry = false;
  }
}

void lvl3(){
  background(255);
  fill(0);
  rect(0,0,600,50);
  rect(550,0,50,500);
  rect(0,100,500,50);
  rect(0,100,50,500);
  rect(100,200,600,50);
  rect(0,300,500,50);
  rect(100,400,600,50);
  rect(50,500,450,100);
  rect(500,550,100,100);
  noStroke();
  fill(255, 0, 0);
  frameRate(23);
  ellipse(x-10, y-15, 20, 20);
  if (x<600){
    if (red(get(x+10, y))<160 || red(get(x-10, y))<160 || red(get(x-10, y))<160 || red(get(x, y+10))<160) {
    x=75;
    y=85;
    }
  }
  if (keyPressed) {
    if (key=='w') {
      y=y-10;
    }
    if (key=='s') {
      y=y+10;
    }
    if (key=='a') {
      x=x-10;
    }
    if (key=='d') {
      x=x+10;
    }
  }
  if (x>=590){
    lv1 = false;
    lv2 = false;
    lv3 = false;
    scry = true;
  }
}

void scary(){
  scarypic = loadImage("scary.png");
}
