/*
  Initialization
*/

color whiteUI = color(230, 230, 230);
color redUI = color(255, 30, 15);
color blueUI = color(30, 15, 255);
color greenUI = color(30, 170, 15);
color needle = color(255, 60, 15);
int oilTempNotRed = 255;
int rotateNeedle = 0;
int mph = 0;
int temp = 73;
int oilTemp = 190;
int rFuel = 0;
int gFuel = 255;
float rpm = 1.5;
String degreeType = "F";
PShape arrow;
boolean l = false;
boolean r = false;
boolean c = false;
boolean t = false;
boolean o = false;
boolean b = false;
boolean h = false;
float minFuel = HALF_PI + QUARTER_PI;
float maxFuel = TWO_PI + QUARTER_PI;
int xOilTemp = 499;

/*
  Dimensions and defaults
*/

void setup() {
  
  size(1000, 600);
  background(20, 20, 20);
  
  textFont(createFont("Noto Sans", 30));
  textSize(28);
  textAlign(CENTER);
  
  stroke(greenUI);
  fill(greenUI);
  arrow = createShape();
  arrow.beginShape();
  arrow.vertex(0, 0);
  arrow.vertex(25, 21);
  arrow.vertex(25, 9);
  arrow.vertex(62, 9);
  arrow.vertex(62, -9);
  arrow.vertex(25, -9);
  arrow.vertex(25, -21);
  arrow.endShape(CLOSE);
  
  stroke(130);
  fill(130);
  rect(0, 450, 1000, 600);
  
  stroke(0);
  fill(0);
  text("Controls:", 500, 480);
  text("Gas", 80, 500);
  text("Oil temp   +   -", 680, 500);
  text("Cruise   +   -", 120, 565);
  text("Temperature   +   -", 280, 500);
  text("Fuel   +   -", 550, 565);
  text("Blink   L   R", 740, 565);
  text("C  T  O  B  H", 335, 565);
  
  rect(0, 0, 1000, 47);
  
  noFill();
  rect(30, 465, 100, 52); // Gas button
  rect(30, 530, 180, 52); // Cruise button
  rect(138, 530, 37, 52); // Plus speed button (minus speed is just to the right)
  rect(150, 465, 265, 52); // Temperature button
  rect(340, 465, 38, 52); // Plus temp button (minus temp is just to the right)
  rect(580, 465, 205, 52); // Oil temp button
  rect(713, 465, 38, 52); // Plus oil temp button (minus oil temp is just to the right)
  rect(480, 530, 150, 52); // Fuel button
  rect(555, 530, 38, 52); // Plus fuel button (minus fuel is just to the right)
  rect(655, 530, 170, 52); // Blink button
  rect(740, 530, 44, 52); // Blink left (right is just to the right)
  // Warnings
  rect(250, 530, 170, 52);
  rect(285, 530, 100, 52);
  rect(315, 530, 35, 52);
  
  stroke(blueUI);
  fill(blueUI, 30);
  arc(250, 250, 300, 300, QUARTER_PI, HALF_PI+QUARTER_PI, OPEN);
  arc(750, 250, 300, 300, QUARTER_PI, HALF_PI+QUARTER_PI, OPEN);
  
  stroke(redUI);
  arc(250, 250, 298, 298, 0, QUARTER_PI);
  arc(250, 250, 296, 296, 0, QUARTER_PI);
  arc(750, 250, 298, 298, 0, QUARTER_PI);
  arc(750, 250, 296, 296, 0, QUARTER_PI);
  arc(250, 250, 202, 202, 0, QUARTER_PI);
  arc(250, 250, 204, 204, 0, QUARTER_PI);
  arc(750, 250, 202, 202, 0, QUARTER_PI);
  arc(750, 250, 204, 204, 0, QUARTER_PI);
  
  stroke(255);
  fill(255);
  circle(250, 250, 25);
  circle(750, 250, 25);
  
}

void draw() {
  
  update(mouseX, mouseY);
  
  stroke(255);
  fill(0);
  quad(425, 350, 425, 125, 575, 125, 575, 350);
  fill(whiteUI);
  line(425, 160, 507, 160);
  line(507, 160, 520, 127);
  line(520, 127, 575, 127);
  
  textSize(28);
  if(minute() > 9) {
    if(hour() < 10) {
      text("0" + hour() + ":" + minute(), 468, 153);
    }
    else {
      text(hour() + ":" + minute(), 468, 153);
    }
  }
  else {
    if(hour() < 10) {
      text("0" + hour() + ":0" + minute(), 468, 153);
    }
    else {
      text(hour() + ":0" + minute(), 468, 153);
    }
  }
  
  stroke(0);
  fill(0);
  arc(250, 250, 300, 300, HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  arc(750, 250, 300, 300, HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  
  stroke(redUI);
  fill(redUI, 30);
  arc(250, 250, 298, 298, 0, QUARTER_PI);
  arc(750, 250, 298, 298, 0, QUARTER_PI);
  noFill();
  arc(250, 250, 298, 298, 0, QUARTER_PI);
  arc(250, 250, 296, 296, 0, QUARTER_PI);
  arc(750, 250, 298, 298, 0, QUARTER_PI);
  arc(750, 250, 296, 296, 0, QUARTER_PI);
  arc(250, 250, 182, 182, 0, QUARTER_PI);
  arc(250, 250, 184, 184, 0, QUARTER_PI);
  arc(750, 250, 182, 182, 0, QUARTER_PI);
  arc(750, 250, 184, 184, 0, QUARTER_PI);
  
  stroke(0);
  fill(0);
  circle(250, 250, 179);
  circle(750, 250, 179);
  
  stroke(whiteUI, 30);
  fill(whiteUI, 30);
  arc(250, 250, 179, 179, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI, CHORD);
  arc(750, 250, 179, 179, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI, CHORD);
  
  stroke(whiteUI);
  noFill();
  circle(250, 250, 305);
  circle(250, 250, 307);
  circle(750, 250, 305);
  circle(750, 250, 307);
  arc(250, 250, 300, 300, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI);
  arc(250, 250, 180, 180, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI);
  arc(750, 250, 300, 300, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI);
  arc(750, 250, 180, 180, HALF_PI+QUARTER_PI, 2*PI+QUARTER_PI);
  
  stroke(255);
  fill(255);
  circle(250, 250, 25);
  circle(750, 250, 25);
  
  noStroke();
  fill(20);
  rect(399, 50, 100, 75);
  rect(524, 50, 100, 75);
  
  if(l) {
    if(millis() % 1000 < 500) {
      shape(arrow, 400, 75);
    }
  }
  if(r) {
    if(millis() % 1000 < 500) {
      rotate(PI);
      shape(arrow, -600, -75);
      rotate(PI);
    }
  }
  
  stroke(255, oilTempNotRed, oilTempNotRed);
  fill(255, oilTempNotRed, oilTempNotRed);
  textSize(20);
  text(oilTemp + "°", xOilTemp, 307);
  
  stroke(whiteUI);
  fill(whiteUI);
  
  rect(440, 310, 2, 20);
  rect(558, 310, 2, 20);
  rect(441, 319, 118, 2);
  rect(xOilTemp, 315, 2, 10);
  
  textSize(12);
  text("Oil Temp.", 500, 340);
  
  textSize(20);
  text("3245  mi.", 250, 383);
  text("211.1  mi.", 750, 383);
  text("MPH", 250, 342);
  text("RPM / 1000", 750, 342);
  
  textSize(12);
  text(degreeType, 563, 153);
  
  textSize(28);
  
  if(temp < 40) {
    stroke(100, 180, 220);
    fill(100, 180, 220);
    text(temp + "°", 547, 153);
  }
  else text(temp + "°", 547, 153);
  
  stroke(rFuel, gFuel, 30);
  fill(rFuel, gFuel, 30);
  arc(500, 235, 100, 100, minFuel, maxFuel, PIE);
  textSize(14);
  text("Fuel >", 500, 270);
  textSize(28);
  
  stroke(0);
  fill(0);
  circle(500, 235, 80);
  
  stroke(rFuel, gFuel, 30);
  fill(rFuel, gFuel, 30);
  textSize(14);
  text("Fuel >", 500, 270);
  textSize(28);
  
  stroke(needle);
  fill(needle);
  
  pushMatrix();
  translate(250, 250);
  rotate(radians(rotateNeedle));
  triangle(20, -10, 10, -20, -70, 70);
  popMatrix();
  
  pushMatrix();
  translate(750, 250);
  rotate(radians((rotateNeedle % 60) + 30));
  triangle(20, -10, 10, -20, -70, 70);
  popMatrix();
  
  stroke(whiteUI);
  fill(whiteUI);
  
  pushMatrix();
  translate(250, 250);
  rotate(radians(rotateNeedle));
  translate(-70, 100);
  rotate(radians(-rotateNeedle));
  if(mph < 10) {
    text(mph, -10, 0);
  }
  else if(mph < 100) {
    text(mph, -2, 2);
  }
  else {
    text(mph, 0, 5);
  }
  popMatrix();
  
  pushMatrix();
  translate(750, 250);
  rotate(radians((rotateNeedle%60)+30));
  translate(-60, 100);
  rotate(radians(-((rotateNeedle%60)+30)));
  textAlign(CENTER);
  text(nf(rpm + (((float)rotateNeedle%60)/30), 0, 1), -5, 0);
  popMatrix();
}

void update(int x, int y) {
  
  // Gas controls
  if(x > 30 && x < 130 && y > 465 && y < 517) {
    if(mph == 0 && !mousePressed);
    else if(mph == 135 && mousePressed);
    else if(mousePressed) {
      rotateNeedle += 2;
      mph += 1;
    }
    else {
      rotateNeedle -= 2;
      mph -= 1;
    }
  }
  
  // Cruise controls
  if(x > 138 && x < 175 && y > 530 && y < 582) {
    if(mph < 135 && mousePressed) {
      mph += 1;
      rotateNeedle += 2;
    }
  }
  else if(x > 175 && x < 210 && y > 530 && y < 582) {
    if(mph > 0 && mousePressed) {
      mph -= 1;
      rotateNeedle -= 2;
    }
  }
  
  // Temperature controls
  if(x > 340 && x < 378 && y > 465 && y < 517) {
    if(temp < 99 && mousePressed) {
      temp += 1;
    }
  }
  else if(x > 378 && x < 416 && y > 465 && y < 517) {
    if(temp > -99 && mousePressed) {
      temp -= 1;
    }
  }
  
  // Fuel controls
  if(x > 555 && x < 593 && y > 530 && y < 582) {
    if(maxFuel < TWO_PI + QUARTER_PI && mousePressed) {
      maxFuel += 0.01745;
      if(rFuel > 0) {
        rFuel -= 1;
        gFuel += 1;
      }
    }
  }
  else if(x > 593 && x < 631 && y > 530 && y < 582) {
    if(maxFuel > minFuel && mousePressed) {
      maxFuel -= 0.01745;
      if(rFuel < 255) {
        rFuel += 1;
        gFuel -= 1;
      }
    }
  }
  
  // Oil temp controls
  if(x > 713 && x < 751 && y > 465 && y < 517 && mousePressed) {
    if(xOilTemp < 553) {
      oilTemp += 1;
      xOilTemp += 1;
      if((oilTemp - 190) > 0) {
        oilTempNotRed -= 4;
      }
      else oilTempNotRed += 4;
    }
  }
  else if(x > 751 && x < 789 && y > 465 && y < 517 && mousePressed) {
    if(xOilTemp > 446) {
      oilTemp -= 1;
      xOilTemp -= 1;
      if((oilTemp - 190) < 0) {
        oilTempNotRed -= 4;
      }
      else oilTempNotRed += 4;
    }
  }

}

void mouseReleased() {
   
  // Blinker controls
  if(mouseX > 740 && mouseX < 784 && mouseY > 530 && mouseY < 582) {
    if(l) l = false;
    else l = true;
  }
  else if(mouseX > 784 && mouseX < 828 && mouseY > 530 && mouseY < 582) {
    if(r) r = false;
    else r = true;
  }
  
  // Information controls
  textSize(24);
  
  if(mouseX > 250 && mouseX < 285 && mouseY > 530 && mouseY < 582) {
    if(c) {
      stroke(0);
      fill(0);
      rect(90, 0, 160, 45);
      c = false;
    }
    else {
      stroke(whiteUI);
      fill(whiteUI);
      text("Check Engine", 170, 30);
      c = true;
    }
  }
  else if(mouseX > 285 && mouseX < 315 && mouseY > 530 && mouseY < 582) {
    if(t) {
      stroke(0);
      fill(0);
      rect(250, 0, 170, 45);
      t = false;
    }
    else {
      stroke(whiteUI);
      fill(whiteUI);
      text("Tire Pressure", 340, 30);
      t = true;
    }
  }
  else if(mouseX > 315 && mouseX < 350 && mouseY > 530 && mouseY < 582) {
    if(o) {
      stroke(0);
      fill(0);
      rect(420, 0, 140, 45);
      o = false;
    }
    else {
      stroke(whiteUI);
      fill(whiteUI);
      text("Change Oil", 500, 30);
      o = true;
    }
  }
  else if(mouseX > 350 && mouseX < 385 && mouseY > 530 && mouseY < 582) {
    if(b) {
      stroke(0);
      fill(0);
      rect(590, 0, 160, 45);
      b = false;
    }
    else {
      stroke(whiteUI);
      fill(whiteUI);
      text("Parking Brake", 670, 30);
      b = true;
    }
  }
  else if(mouseX > 385 && mouseX < 420 && mouseY > 530 && mouseY < 582) {
    if(h) {
      stroke(0);
      fill(0);
      rect(750, 0, 160, 45);
      h = false;
    }
    else {
      stroke(whiteUI);
      fill(whiteUI);
      text("High Beams", 840, 30);
      h = true;
    }
  }
  
}
