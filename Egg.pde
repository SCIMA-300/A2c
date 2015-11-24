class Egg {
  float x, y; // X-coordinate, y-coordinate
  float tilt; // Left and right angle offset
  float angle; // Used to define the tilt
  float scalar; // Height of the egg
  color c;
  color[] mycolor = new color [9];
  float indirectness= random(0,1);
  int colorlookup;
 // mycolor = new color int color[9] mycolor =((150,0,0),(123,98,8), (150,0,0), (123,98,8) ,  (150,0,0),(123,98,8), (150,0,0), (123,98,8) ,  (150,0,0), (223,98,8));
//int color[9] c = (150,0,0),(123,98,8), (150,0,0), (123,98,8) ,  (150,0,0),(123,98,8), (150,0,0), (123,98,8) ,  (150,0,0), (223,98,8);
 //color c = new color [9];

 // int arrayLength = c.length;
 // color lastitem = c(c.length-1);
 //  Constructor
  Egg(float xpos, float ypos, float t, float s) {
    x = xpos;
    y = ypos;
    tilt = t;
    scalar = s / 100.0;
  }
    void setup(){
    mycolor[0]=color (150,0,0);
    mycolor[1]= color(123,98,8);
    mycolor[2] = color (150,0,0);
    mycolor[3]= color(123,98,8); 
    mycolor[4] = color (150,0,0);
    mycolor[5]= color(123,98,8);
    mycolor[6] = color (150,0,0);
    mycolor[7]= color(123,98,8); 
    mycolor[8] = color (150,0,0);
    mycolor[9]= color(223,98,8);

 colorlookup=int (indirectness*mycolor.length);
 //colorlookup= indirectness*c.size, if we use arraylist()
  }

  void wobble() {
    tilt = cos(angle) / 8;
    angle += 0.1;
  }

  void display() {
    noStroke();
    fill( mycolor[0]);
    pushMatrix();
    translate(x, y);
    rotate(tilt);
    scale(scalar);
    beginShape();
    vertex(0, -100);
    bezierVertex(25, -100, 40, -65, 40, -40);
    bezierVertex(40, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -40, -15, -40, -40);
    bezierVertex(-40, -65, -25, -100, 0, -100);
    endShape();
    popMatrix();
  }
}